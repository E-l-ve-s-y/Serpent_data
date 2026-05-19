#!/usr/bin/env python3
"""
中子能谱绘图脚本
- 绘制通量/(Δ能量区间) 随能量的变化
- 横纵坐标均用对数坐标
- 5个燃耗步一张图（det5, det10, det15, det20, det25）
- 7个能群（G1-G7）
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import os
from pathlib import Path

# 能量边界 (eV) - 8个边界点形成7个能群
ENERGY_BOUNDARIES = [1E-11, 4.0E-9, 1.0E-8, 1.0E-7, 0.625E-6, 0.906E-3, 3.0E-3, 20.0]

# 计算每个能群的能量间隔 ΔE
DELTA_E = np.array([ENERGY_BOUNDARIES[i+1] - ENERGY_BOUNDARIES[i] for i in range(7)])

# 能群标签
GROUP_LABELS = ['G1', 'G2', 'G3', 'G4', 'G5', 'G6', 'G7']

# 燃耗步选择
BURNUP_STEPS = ['det5', 'det10', 'det15', 'det20', 'det25']

# 颜色和线型设置
COLORS = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd']
LINESTYLES = ['-', '--', '-.', ':', '-']

# 输出目录
OUTPUT_DIR = Path(r"C:\Users\lsy05\serpent_data\results\analysis\Neutron_spectra")

# 能量群中心点（用于X轴显示）
ENERGY_CENTERS = np.array([
    np.sqrt(ENERGY_BOUNDARIES[i] * ENERGY_BOUNDARIES[i+1]) 
    for i in range(7)
])

def load_data(csv_path):
    """加载探测器能谱数据"""
    df = pd.read_csv(csv_path, comment='#')
    return df

def plot_single_step(df, case_id, burnup_step, output_path):
    """绘制单个燃耗步的能谱图"""
    # 筛选数据
    case_data = df[df['case'] == case_id]
    step_data = case_data[case_data['detector'] == burnup_step]
    
    if step_data.empty:
        print(f"警告: 算例 {case_id} 的 {burnup_step} 没有数据")
        return False
    
    # 获取通量数据
    flux_values = []
    for group in GROUP_LABELS:
        val = step_data[group].values[0]
        flux_values.append(val)
    flux_values = np.array(flux_values)
    
    # 计算 Φ/ΔE
    flux_per_dE = flux_values / DELTA_E
    
    # 创建图形
    fig, ax = plt.subplots(figsize=(10, 7))
    
    # 绘制能谱（使用阶梯图效果更好）
    ax.semilogy(ENERGY_CENTERS, flux_per_dE, 'o-', color='#1f77b4', 
                linewidth=2, markersize=8, label=f'{burnup_step}')
    
    ax.set_xscale('log')
    ax.set_yscale('log')
    
    ax.set_xlabel('Energy (eV)', fontsize=12)
    ax.set_ylabel('Φ/ΔE (a.u.)', fontsize=12)
    ax.set_title(f'{case_id} - Neutron Spectrum ({burnup_step})', fontsize=14, fontweight='bold')
    
    # 添加网格
    ax.grid(True, which='both', linestyle='--', alpha=0.7)
    
    # 设置轴范围
    ax.set_xlim(1E-11, 20)
    
    # 添加能群标注
    for i, (center, label) in enumerate(zip(ENERGY_CENTERS, GROUP_LABELS)):
        ax.axvline(x=center, color='gray', linestyle=':', alpha=0.3)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    
    return True

def plot_multi_steps(df, case_id, output_path):
    """绘制5个燃耗步的对比图"""
    # 筛选算例数据
    case_data = df[df['case'] == case_id]
    
    fig, ax = plt.subplots(figsize=(10, 7))
    
    for i, burnup_step in enumerate(BURNUP_STEPS):
        step_data = case_data[case_data['detector'] == burnup_step]
        
        if step_data.empty:
            print(f"警告: 算例 {case_id} 的 {burnup_step} 没有数据")
            continue
        
        # 获取通量数据
        flux_values = []
        for group in GROUP_LABELS:
            val = step_data[group].values[0]
            flux_values.append(val)
        flux_values = np.array(flux_values)
        
        # 计算 Φ/ΔE
        flux_per_dE = flux_values / DELTA_E
        
        # 绘制
        ax.semilogy(ENERGY_CENTERS, flux_per_dE, 
                   marker='o', color=COLORS[i], 
                   linestyle=LINESTYLES[i],
                   linewidth=2, markersize=6, 
                   label=burnup_step)
    
    ax.set_xscale('log')
    ax.set_yscale('log')
    
    ax.set_xlabel('Energy (eV)', fontsize=12)
    ax.set_ylabel('Φ/ΔE (a.u.)', fontsize=12)
    ax.set_title(f'{case_id} - Neutron Spectrum Comparison', fontsize=14, fontweight='bold')
    
    # 添加网格
    ax.grid(True, which='both', linestyle='--', alpha=0.7)
    
    # 设置轴范围
    ax.set_xlim(1E-11, 20)
    
    # 添加图例
    ax.legend(loc='best', fontsize=10, framealpha=0.9)
    
    plt.tight_layout()
    plt.savefig(output_path, dpi=150, bbox_inches='tight')
    plt.close()
    
    return True

def main():
    # 数据文件路径
    csv_path = r"C:\Users\lsy05\serpent_data\results\data_processed\detector_spectra.csv"
    
    print("加载数据...")
    df = load_data(csv_path)
    
    # 获取所有算例
    cases = df['case'].unique()
    print(f"共发现 {len(cases)} 个算例")
    
    # 创建输出目录
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    
    total_plots = 0
    
    # 遍历每个算例
    for case_id in sorted(cases):
        print(f"处理算例: {case_id}")
        
        # 创建算例专属文件夹
        case_dir = OUTPUT_DIR / case_id
        case_dir.mkdir(parents=True, exist_ok=True)
        
        # 1. 绘制5张单燃耗步图
        for burnup_step in BURNUP_STEPS:
            output_path = case_dir / f"{case_id}_{burnup_step}_spectrum.png"
            if plot_single_step(df, case_id, burnup_step, output_path):
                total_plots += 1
        
        # 2. 绘制5燃耗步对比图
        output_path = case_dir / f"{case_id}_multi_steps_spectrum.png"
        if plot_multi_steps(df, case_id, output_path):
            total_plots += 1
        
        print(f"  算例 {case_id} 完成: 6张图")
    
    print(f"\n全部完成! 共生成 {total_plots} 张图")
    print(f"输出目录: {OUTPUT_DIR}")

if __name__ == "__main__":
    main()