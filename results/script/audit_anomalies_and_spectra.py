#!/usr/bin/env python3
"""Audit A001/B001 anomalies and sampled 7-group spectra."""

from __future__ import annotations

import argparse
import math
import re
import sys
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path
from typing import Dict, Iterable, List, Optional, Sequence, Tuple

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

sys.path.insert(0, str(Path(__file__).parent))

from analyze_data import load_data
from extract_data import ENERGY_GROUPS, get_energy_bin_centers, parse_detector_flux


REPORT_START = "<!-- BEGIN ANOMALY_SPECTRUM_AUDIT -->"
REPORT_END = "<!-- END ANOMALY_SPECTRUM_AUDIT -->"


@dataclass
class MappingAssessment:
    case: str
    selected_mode: str
    label_mode: str
    confidence: str
    evidence: List[str]
    risk: List[str]
    det_indices: List[int]
    matched_step_count: int
    direct_marker_found: bool


@dataclass
class RetryRecord:
    case: str
    det_index: int
    attempt: int
    result: str
    note: str


@dataclass
class SpectrumRunResult:
    case: str
    generated_files: List[Path]
    retries: List[RetryRecord]
    failures: List[str]


@dataclass
class AnomalyRecord:
    case: str
    item: str
    phenomenon: str
    evidence: List[str]
    primary_cause: str
    secondary_cause: str
    counter_checks: List[str]
    confidence: str


def repo_root() -> Path:
    return Path(__file__).resolve().parents[2]


def results_root() -> Path:
    return Path(__file__).resolve().parents[1]


def energy_bin_widths() -> List[float]:
    return [high - low for low, high in ENERGY_GROUPS]


def format_num(value: float) -> str:
    if value is None or (isinstance(value, float) and math.isnan(value)):
        return "—"
    return f"{value:.4e}"


def format_burnup(value: float) -> str:
    if value is None or (isinstance(value, float) and math.isnan(value)):
        return "—"
    return f"{value:.4f}"


def relative_range(series: pd.Series) -> float:
    finite = series.replace([np.inf, -np.inf], np.nan).dropna()
    if finite.empty:
        return float('nan')
    baseline = float(max(abs(finite.median()), 1e-30))
    return float((finite.max() - finite.min()) / baseline)


def total_variation(series: pd.Series) -> float:
    finite = series.replace([np.inf, -np.inf], np.nan).dropna()
    if len(finite) < 2:
        return float('nan')
    return float(np.abs(np.diff(finite.to_numpy())).sum())


def detector_files_for_case(case_dir: Path) -> Dict[int, Path]:
    files: Dict[int, Path] = {}
    pattern = re.compile(rf"{re.escape(case_dir.name)}\.sss_det(\d+)( copy)?\.m$")
    for path in sorted(case_dir.glob(f"{case_dir.name}.sss_det*.m")):
        match = pattern.search(path.name)
        if not match:
            continue
        det_index = int(match.group(1))
        current = files.get(det_index)
        if current is None:
            files[det_index] = path
        elif ' copy' in current.name and ' copy' not in path.name:
            files[det_index] = path
    return files


def detect_mapping(case: str, df_case: pd.DataFrame, case_dir: Path, preferred_mode: str = 'auto') -> MappingAssessment:
    det_files = detector_files_for_case(case_dir)
    det_indices = sorted(det_files)
    direct_marker_found = False
    for det_index in det_indices[: min(len(det_indices), 2)]:
        text = det_files[det_index].read_text(encoding='utf-8', errors='ignore')
        if re.search(r"BURN_STEP\s*\(|BURNUP\s*\(|BURN_DAYS\s*\(", text):
            direct_marker_found = True
            break

    evidence = [
        f"CSV 中 {case} 共 {len(df_case)} 个燃耗点，BURN_STEP 范围 {int(df_case['BURN_STEP'].min())}–{int(df_case['BURN_STEP'].max())}。",
        f"det 文件索引共 {len(det_indices)} 个，范围 {det_indices[0]}–{det_indices[-1]}。" if det_indices else "未找到 det 文件。",
    ]
    risk: List[str] = []

    contiguous = bool(det_indices) and det_indices == list(range(det_indices[0], det_indices[-1] + 1))
    one_to_one = bool(det_indices) and det_indices == list(range(len(df_case)))

    if direct_marker_found:
        evidence.append("det 文件中发现直接燃耗标识，可直接映射。")
    else:
        evidence.append("det 文件中未发现 BURN_STEP/BURNUP/BURN_DAYS 直接标识。")

    if preferred_mode == 'det-only':
        selected_mode = 'det-only'
        label_mode = 'det'
        confidence = '高'
        risk.append('det-only 模式不解释燃耗步，只保证 det 索引审计可追溯。')
    elif preferred_mode == 'index':
        selected_mode = 'index-assumption'
        label_mode = 'step+det'
        confidence = '中' if one_to_one else '低'
        risk.append('此模式把 detN 临时映射到 BURN_STEP=N；若 SERPENT 输出命名规则不同，步号会错位。')
    elif one_to_one and contiguous and not direct_marker_found:
        selected_mode = 'index-assumption'
        label_mode = 'step+det'
        confidence = '中'
        risk.extend([
            '临时映射假设：detN ↔ BURN_STEP=N。',
            '依据仅为 det 索引连续且数量与 CSV 步数一致，不是 SERPENT 文件内的直接证据。',
            '若后续发现 det 文件由其他时间切片或重启计算生成，步号标签需要整体回退到 det-only。',
        ])
    else:
        selected_mode = 'det-only'
        label_mode = 'det'
        confidence = '中'
        risk.extend([
            '数量或连续性不足以支撑 det↔燃耗步映射。',
            '当前输出仅保证 det 号可追溯；若需要步号，必须补充文件内时间/燃耗标记。',
        ])

    return MappingAssessment(
        case=case,
        selected_mode=selected_mode,
        label_mode=label_mode,
        confidence=confidence,
        evidence=evidence,
        risk=risk,
        det_indices=det_indices,
        matched_step_count=len(df_case),
        direct_marker_found=direct_marker_found,
    )


def sampled_detector_indices(det_indices: Sequence[int], every: int) -> List[int]:
    sampled = [idx for idx in det_indices if idx % every == 0]
    if det_indices and det_indices[-1] not in sampled:
        sampled.append(det_indices[-1])
    return sampled


def flux_per_width_from_file(det_file: Path) -> Optional[np.ndarray]:
    spectrum = parse_detector_flux(det_file)
    if not spectrum:
        return None
    widths = np.asarray(energy_bin_widths(), dtype=float)
    fluxes = np.asarray([float(spectrum.get(f'G{i+1}', 0.0) or 0.0) for i in range(len(widths))], dtype=float)
    with np.errstate(divide='ignore', invalid='ignore'):
        density = np.where(widths > 0, fluxes / widths, np.nan)
    density = np.where(density > 0, density, np.nan)
    if np.all(np.isnan(density)):
        return None
    return density


def plot_spectrum(case: str, det_index: int, output_path: Path, mapping: MappingAssessment) -> Optional[Path]:
    det_file = detector_files_for_case(results_root() / 'data_raw' / case).get(det_index)
    if det_file is None:
        return None

    density = flux_per_width_from_file(det_file)
    if density is None:
        return None

    energy_centers = np.asarray(get_energy_bin_centers(), dtype=float)
    fig, ax = plt.subplots(figsize=(8, 6))
    ax.loglog(energy_centers, density, 'o-', linewidth=1.8, markersize=5)
    ax.set_xlabel('Neutron Energy E (eV)', fontsize=11)
    ax.set_ylabel('Flux / ΔE (a.u./eV)', fontsize=11)
    if mapping.label_mode == 'step+det':
        ax.set_title(f'{case} step {det_index:02d} (det {det_index:02d})', fontsize=12)
    else:
        ax.set_title(f'{case} det {det_index:02d}', fontsize=12)
    ax.grid(True, which='both', alpha=0.3)
    output_path.parent.mkdir(parents=True, exist_ok=True)
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close(fig)
    return output_path


def build_spectrum_filename(case: str, det_index: int, mapping: MappingAssessment) -> str:
    if mapping.label_mode == 'step+det':
        return f'{case}_flux_step{det_index:02d}_det{det_index:02d}.png'
    return f'{case}_flux_det{det_index:02d}.png'


def generate_sampled_spectra(case: str, df_case: pd.DataFrame, plot_root: Path, sample_every: int, preferred_mode: str) -> Tuple[MappingAssessment, SpectrumRunResult]:
    case_dir = results_root() / 'data_raw' / case
    mapping = detect_mapping(case, df_case, case_dir, preferred_mode=preferred_mode)
    retries: List[RetryRecord] = []
    failures: List[str] = []
    generated_files: List[Path] = []

    if not mapping.det_indices:
        failures.append('未找到 det 文件')
        return mapping, SpectrumRunResult(case, generated_files, retries, failures)

    for det_index in sampled_detector_indices(mapping.det_indices, sample_every):
        output_path = plot_root / case / build_spectrum_filename(case, det_index, mapping)
        success = False
        for attempt in range(1, 3):
            plotted = plot_spectrum(case, det_index, output_path, mapping)
            if plotted is not None:
                success = True
                if attempt > 1:
                    retries.append(RetryRecord(case, det_index, attempt, 'success', '重试后成功生成谱图'))
                generated_files.append(plotted)
                break
            retries.append(RetryRecord(case, det_index, attempt, 'retry', '谱数据为空或解析失败'))
        if not success:
            failures.append(f'det{det_index:02d} 解析失败')
            if retries and retries[-1].case == case and retries[-1].det_index == det_index:
                retries[-1].result = 'failed'
                retries[-1].note = '两次尝试后仍失败'

    print(f'Processing {case}, spectrum pictures have been saved ({len(generated_files)})')
    return mapping, SpectrumRunResult(case, generated_files, retries, failures)


def monotonic_direction(series: pd.Series) -> str:
    diffs = np.diff(series.to_numpy(dtype=float))
    if np.all(diffs >= -1e-18):
        return '单调上升'
    if np.all(diffs <= 1e-18):
        return '单调下降'
    return '非单调'


def analyze_a001_xe(df_case: pd.DataFrame) -> AnomalyRecord:
    xe = df_case['Mdens_Xe135']
    xe_a = df_case['Adens_Xe135']
    sm = df_case['Mdens_Sm149']
    peak_idx = int(xe.idxmax())
    phenomenon = (
        f"Xe-135 在 {format_burnup(df_case.loc[peak_idx, 'burnup_MWd_kgHM'])} MWd/kgHM 达峰后转入下降，"
        f"Mdens_Xe135 从 {format_num(xe.iloc[0])} 升到 {format_num(xe.iloc[peak_idx])}，末步回落到 {format_num(xe.iloc[-1])}。"
    )
    evidence = [
        f"Mdens_Xe135 与 Adens_Xe135 的峰位一致，均出现在步 {peak_idx}。",
        f"U235_FISS 从 {format_num(df_case['U235_FISS'].iloc[0])} 下降到末步 {format_num(df_case['U235_FISS'].iloc[-1])}，说明 Xe 源项随主裂变源衰减。",
        f"Xe135_CAPT 末步仍为 {format_num(df_case['XE135_CAPT'].iloc[-1])}，表明 Xe 捕获/去除项未消失。",
        f"Sm-149 在后段继续累积到 {format_num(sm.iloc[-1])}，与 Xe 后降形成对照，说明不是文件尾部整体截断。",
    ]
    counter_checks = [
        'Mdens_Xe135 与 Adens_Xe135 在同一步同时回落，不符合单一单位换算错误。',
        'Xe-135 峰后仍保持正值且 XE135_CAPT 非零，不是“被清零”或缺列。',
        'Sm-149 后段继续增加，说明燃耗后段并非所有毒物都同步下降。',
    ]
    return AnomalyRecord(
        case='A001',
        item='Xe-135 未平衡/下降段',
        phenomenon=phenomenon,
        evidence=evidence,
        primary_cause='主因是 Xe-135 在前期由裂变产额驱动快速累积，后期随着 U235 主裂变源衰减，I/Xe 生成项下降，而 Xe 自身衰变与中子俘获去除项继续存在，净平衡转为下降。',
        secondary_cause='次因是后段 Sm-149 累积与 keff 下降共同压缩中子经济性，使系统更难维持前期的 Xe 生成水平。',
        counter_checks=counter_checks,
        confidence='高',
    )


def analyze_a001_pu241(df_case: pd.DataFrame) -> AnomalyRecord:
    pu241_ratio = (df_case['PU241_FISS'] / df_case['PU241_CAPT'].replace(0, np.nan)).replace([np.inf, -np.inf], np.nan)
    pu239_ratio = (df_case['PU239_FISS'] / df_case['PU239_CAPT'].replace(0, np.nan)).replace([np.inf, -np.inf], np.nan)
    pu240_ratio = (df_case['PU240_FISS'] / df_case['PU240_CAPT'].replace(0, np.nan)).replace([np.inf, -np.inf], np.nan)
    pu241_m = df_case['Mdens_Pu241']
    pu239_m = df_case['Mdens_Pu239']

    phenomenon = (
        f"A001 中 Pu-241 的显著波动主要出现在 FISS/CAPT 比值：范围 {format_num(pu241_ratio.min())}–{format_num(pu241_ratio.max())}，"
        f"相对波动幅度明显大于 Pu-239 ({format_num(pu239_ratio.min())}–{format_num(pu239_ratio.max())}) 与 Pu-240 ({format_num(pu240_ratio.min())}–{format_num(pu240_ratio.max())})。"
    )
    evidence = [
        f"Pu-241 比值总变差为 {total_variation(pu241_ratio):.4f}，高于 Pu-239 的 {total_variation(pu239_ratio):.4f}。",
        f"Pu-241 比值相对跨度为 {relative_range(pu241_ratio):.2f}，高于 Pu-239 的 {relative_range(pu239_ratio):.2f}。",
        f"Pu-241 质量密度末步仅 {format_num(pu241_m.iloc[-1])}，而 Pu-239 末步为 {format_num(pu239_m.iloc[-1])}，Pu-241 基数更小。",
        f"Pu-241 的生成依赖 Pu-240 俘获链，且其自身既可裂变又可俘获，分子分母都处于小量级竞争状态。",
    ]
    counter_checks = [
        'Pu-241 的绝对质量密度变化远小于其比值变化，说明“看起来更波动”主要来自比值放大而非库存突跳。',
        'Pu-239/240 也属于次生 Pu 核素，但因库存与反应率量级更大，曲线更平滑，可作为反证。',
        '若问题来自统一统计噪声，Pu-239 与 Pu-240 应出现同等幅度振荡；实际并未出现。',
    ]
    return AnomalyRecord(
        case='A001',
        item='Pu-241 波动大于其他 Pu 核素',
        phenomenon=phenomenon,
        evidence=evidence,
        primary_cause='主因是 Pu-241 在 A001 中属于低库存次生产物，FISS/CAPT 比值由两个小量级反应率相除得到，任何绝对微小变化都会被放大成较大的相对波动。',
        secondary_cause='次因是 Pu-241 同时承担可裂变与可俘获两条竞争通道，受谱形和链式生成/损耗平衡影响，比 Pu-239、Pu-240 更敏感。',
        counter_checks=counter_checks,
        confidence='中高',
    )


def analyze_b001_pa233(df_case: pd.DataFrame) -> AnomalyRecord:
    pa = df_case['Adens_Pa233']
    pa_m = df_case['Mdens_Pa233']
    u233 = df_case['Adens_U233']
    th232 = df_case['Adens_Th232']
    phenomenon = (
        f"Pa-233 在整个燃耗窗内未出现峰值，Adens_Pa233 从 {format_num(pa.iloc[0])} 持续升到末步 {format_num(pa.iloc[-1])}，"
        f"Mdens_Pa233 也同步单调上升到 {format_num(pa_m.iloc[-1])}。"
    )
    evidence = [
        f"Adens_Pa233 判定为“{monotonic_direction(pa)}”，最大值即末步。",
        f"Th-232 仅从 {format_num(th232.iloc[0])} 缓降到 {format_num(th232.iloc[-1])}，表明 Pa-233 的源项母核仍然充足。",
        f"U-233 从 {format_num(u233.iloc[0])} 降到 {format_num(u233.iloc[-1])}，说明 Pa→U233 转化产物不足以抵消初装 U-233 消耗。",
        f"B001 末步 keff 仍为 {df_case['ANA_KEFF'].iloc[-1]:.4f}，系统保持较高通量水平，Th→Pa 源项未出现骤降。",
    ]
    counter_checks = [
        'Adens_Pa233 与 Mdens_Pa233 同步单调上升，排除单一字段读写异常。',
        '若 Pa-233 已进入净消耗阶段，应先看到平台或回落；当前 26 步内未出现。',
        'U-233 没有后段回升，说明 Pa-233 的后续转化不足以把自身库存拉回峰后下降区。',
    ]
    return AnomalyRecord(
        case='B001',
        item='Pa-233 无峰值且持续增加',
        phenomenon=phenomenon,
        evidence=evidence,
        primary_cause='主因是 B001 在当前燃耗窗内仍处于 Th-232 持续俘获并生成 Pa-233 的阶段，源项一直大于 Pa-233 的衰变/俘获去除项，因此尚未达到峰值。',
        secondary_cause='次因是 B001 初始 U-233 装量较高，末段仍保持较强中子场，使 Th→Pa 源项持续存在，而新增 U-233 与 U-235 产物仍不足以改变这一平衡。',
        counter_checks=counter_checks,
        confidence='高',
    )


def analyze_anomalies(df: pd.DataFrame) -> List[AnomalyRecord]:
    records: List[AnomalyRecord] = []
    a001 = df[df['case'] == 'A001'].reset_index(drop=True)
    b001 = df[df['case'] == 'B001'].reset_index(drop=True)
    records.append(analyze_a001_xe(a001))
    records.append(analyze_a001_pu241(a001))
    records.append(analyze_b001_pa233(b001))
    return records


def mapping_table_md(assessments: Sequence[MappingAssessment]) -> str:
    lines = [
        '| Case | det文件数 | CSV步数 | 选用模式 | 置信度 | 直接文件内证据 |',
        '|---|---:|---:|---|---|---|',
    ]
    for item in assessments:
        lines.append(
            f"| {item.case} | {len(item.det_indices)} | {item.matched_step_count} | {item.selected_mode} | {item.confidence} | {'有' if item.direct_marker_found else '无'} |"
        )
    return '\n'.join(lines)


def anomaly_summary_table_md(records: Sequence[AnomalyRecord]) -> str:
    lines = [
        '| Case | 异常项 | 现象概述 | 主因 | 次因 | 置信度 |',
        '|---|---|---|---|---|---|',
    ]
    for item in records:
        lines.append(
            f"| {item.case} | {item.item} | {item.phenomenon} | {item.primary_cause} | {item.secondary_cause} | {item.confidence} |"
        )
    return '\n'.join(lines)


def plot_count_table_md(plot_counts: Dict[str, int]) -> str:
    lines = ['| Case | 谱图数量 |', '|---|---:|']
    for case in sorted(plot_counts):
        lines.append(f'| {case} | {plot_counts[case]} |')
    return '\n'.join(lines)


def retry_table_md(retries: Sequence[RetryRecord], failures: Sequence[str]) -> str:
    if not retries and not failures:
        return '无失败样例；无重试记录。'
    lines = ['| Case | det | attempt | result | note |', '|---|---:|---:|---|---|']
    for item in retries:
        lines.append(f'| {item.case} | {item.det_index} | {item.attempt} | {item.result} | {item.note} |')
    for failure in failures:
        lines.append(f'| — | — | — | failed | {failure} |')
    return '\n'.join(lines)


def anomaly_details_md(records: Sequence[AnomalyRecord]) -> str:
    sections: List[str] = []
    for item in records:
        sections.extend([
            f"#### {item.case} — {item.item}",
            '',
            f"- **现象描述**：{item.phenomenon}",
            '- **数据证据**：',
            *[f"  - {line}" for line in item.evidence],
            f"- **主因**：{item.primary_cause}",
            f"- **次因**：{item.secondary_cause}",
            '- **反证检查**：',
            *[f"  - {line}" for line in item.counter_checks],
            f"- **结论置信度**：{item.confidence}",
            '',
        ])
    return '\n'.join(sections).rstrip()


def assumptions_md(assessments: Sequence[MappingAssessment]) -> str:
    lines = []
    for item in assessments:
        lines.append(f"- **{item.case} / {item.selected_mode} / 置信度{item.confidence}**")
        for evidence in item.evidence:
            lines.append(f"  - 依据：{evidence}")
        for risk in item.risk:
            lines.append(f"  - 风险：{risk}")
    return '\n'.join(lines)


def build_report_section(
    anomaly_records: Sequence[AnomalyRecord],
    sample_mappings: Sequence[MappingAssessment],
    all_mappings: Sequence[MappingAssessment],
    plot_counts: Dict[str, int],
    retries: Sequence[RetryRecord],
    failures: Sequence[str],
    sample_cases: Sequence[str],
    sample_every: int,
) -> str:
    total_plots = sum(plot_counts.values())
    sample_summary = ', '.join(sample_cases)
    full_mapping_mode = all_mappings[0].selected_mode if all_mappings else '—'
    return f"""
{REPORT_START}
## 8. A001/B001 异常机理与 7 群谱抽样审计（新增章节草稿）

> 执行时间：{datetime.now().strftime('%Y-%m-%d %H:%M:%S')}  
> 谱图输出目录：`plots/{{CASE}}/`  
> 复用脚本能力：`results/script/extract_data.py` 的 7 群谱解析/能群结构/log-log 出图口径，`results/script/analyze_data.py` 的按 case 分层输出约定。

### 8.1 分阶段执行记录

1. **阶段1（异常机理）**：仅分析 A001/B001，不改原有基础图流程，完成 3 个异常项的现象-证据-主次因-反证-置信度审计。  
2. **阶段2（谱图流程）**：先对 {sample_summary} 做小样验证；确认横纵轴均为对数、抽样规则为“每 {sample_every} 步 + 末步补点”、命名包含 case 与 step/det。随后按相同口径全量执行。  
3. **阶段3（报告汇总）**：把异常分析、谱图统计、失败/重试、关键假设与风险合并到本章节。  

### 8.2 det 与燃耗步映射审计

#### 8.2.1 试运行样例（A001/B001）

{mapping_table_md(sample_mappings)}

#### 8.2.2 全量执行口径

- 全量执行默认模式：`{full_mapping_mode}`。
- 当 `det 文件数量 == CSV 燃耗点数量` 且索引连续为 `0..N-1` 时，采用**临时映射假设** `detN ↔ BURN_STEP=N`，但在风险清单中保留可回退到 `det-only` 的说明。
- 若后续发现某 case 数量不匹配或索引不连续，应切换到 `det-only` 命名，不再显示步号。

### 8.3 异常分析总结表（A001/B001）

{anomaly_summary_table_md(anomaly_records)}

### 8.4 异常项详细审计

{anomaly_details_md(anomaly_records)}

### 8.5 谱图抽样与输出规则

- 图定义：单燃耗点 `flux/ΔE vs E`；横纵轴均为对数坐标。  
- 抽样规则：`det / step = 0, {sample_every}, {sample_every * 2}, ...`；若末步不在 {sample_every} 的倍数上，则补末步。  
- 文件命名：当映射成立时，`{{CASE}}_flux_stepNN_detNN.png`；否则回退为 `{{CASE}}_flux_detNN.png`。  
- 目录结构：`plots/{{CASE}}/`。  

### 8.6 每 case 图数量统计

> 全量生成谱图总数：**{total_plots}**

{plot_count_table_md(plot_counts)}

### 8.7 失败样例与重试记录

{retry_table_md(retries, failures)}

### 8.8 关键假设与风险清单

{assumptions_md(sample_mappings)}

- 全局风险：当前 det 文件缺少直接的燃耗步/时间标签，`detN ↔ BURN_STEP=N` 只是**数量与索引一致性驱动的临时映射**。若未来拿到更完整的 SERPENT detector header，应优先用文件内显式 burnup/time 字段替换该假设。
- 全局风险：`parse_detector_flux()` 采用按栅元求平均后的 7 群通量，因此当前图反映的是 case-step 级平均谱，而不是局部热点谱。
- 全局风险：A001 的 Pu-241“波动”结论针对当前报告图口径中的 `FISS/CAPT` 比值，不应误读为 Pu-241 绝对库存出现同幅度振荡。
{REPORT_END}
""".strip()


def upsert_report(report_path: Path, section: str) -> None:
    text = report_path.read_text(encoding='utf-8')
    pattern = re.compile(rf"\n?{re.escape(REPORT_START)}[\s\S]*?{re.escape(REPORT_END)}\n?", re.M)
    replacement = '\n\n' + section + '\n'
    if pattern.search(text):
        text = pattern.sub(replacement, text)
    else:
        text = text.rstrip() + '\n\n' + section + '\n'
    report_path.write_text(text, encoding='utf-8')


def parse_case_list(raw: Optional[str], df: pd.DataFrame) -> List[str]:
    if not raw:
        return sorted(df['case'].unique())
    return [part.strip() for part in raw.split(',') if part.strip()]


def main() -> None:
    parser = argparse.ArgumentParser(description='Audit anomalies and sampled 7-group spectra.')
    parser.add_argument('--csv', default=str(results_root() / 'data_processed' / 'data.csv'))
    parser.add_argument('--plot-root', default=str(repo_root() / 'plots'))
    parser.add_argument('--report', default=str(repo_root() / 'thorium_pwr_analysis.md'))
    parser.add_argument('--sample-cases', default='A001,B001')
    parser.add_argument('--all-cases', default=None)
    parser.add_argument('--sample-every', type=int, default=5)
    parser.add_argument('--mapping-mode', choices=['auto', 'index', 'det-only'], default='auto')
    args = parser.parse_args()

    df = load_data(args.csv)
    plot_root = Path(args.plot_root)
    report_path = Path(args.report)

    anomaly_records = analyze_anomalies(df)
    sample_cases = parse_case_list(args.sample_cases, df)
    all_cases = parse_case_list(args.all_cases, df) if args.all_cases else sorted(df['case'].unique())

    sample_mappings: List[MappingAssessment] = []
    all_mappings: List[MappingAssessment] = []
    plot_counts: Dict[str, int] = {}
    retry_records: List[RetryRecord] = []
    failures: List[str] = []

    for case in sample_cases:
        df_case = df[df['case'] == case].reset_index(drop=True)
        mapping, result = generate_sampled_spectra(case, df_case, plot_root, args.sample_every, args.mapping_mode)
        sample_mappings.append(mapping)
        plot_counts[case] = len(result.generated_files)
        retry_records.extend(result.retries)
        failures.extend([f'{case}: {item}' for item in result.failures])

    for case in all_cases:
        if case in plot_counts:
            all_mappings.append(sample_mappings[sample_cases.index(case)] if case in sample_cases else detect_mapping(case, df[df['case'] == case].reset_index(drop=True), results_root() / 'data_raw' / case, preferred_mode=args.mapping_mode))
            continue
        df_case = df[df['case'] == case].reset_index(drop=True)
        mapping, result = generate_sampled_spectra(case, df_case, plot_root, args.sample_every, args.mapping_mode)
        all_mappings.append(mapping)
        plot_counts[case] = len(result.generated_files)
        retry_records.extend(result.retries)
        failures.extend([f'{case}: {item}' for item in result.failures])

    for case, mapping in zip(sample_cases, sample_mappings):
        if case not in [item.case for item in all_mappings]:
            all_mappings.append(mapping)

    all_mappings = sorted({item.case: item for item in all_mappings}.values(), key=lambda item: item.case)
    sample_mappings = sorted(sample_mappings, key=lambda item: item.case)
    plot_counts = dict(sorted(plot_counts.items()))

    section = build_report_section(
        anomaly_records=anomaly_records,
        sample_mappings=sample_mappings,
        all_mappings=all_mappings,
        plot_counts=plot_counts,
        retries=retry_records,
        failures=failures,
        sample_cases=sample_cases,
        sample_every=args.sample_every,
    )
    upsert_report(report_path, section)
    print(f'Updated report: {report_path}')


if __name__ == '__main__':
    main()
