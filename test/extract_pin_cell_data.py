#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Data extraction script for Pin Cell burnup analysis.
Extracts keff, burnup, conversion ratio from SERPENT .sss_dep.m and .sss_res.m files.
Outputs to C:\\Users\\lsy05\\serpent_data\\test\\data\\
"""
import re
import sys
from pathlib import Path
import numpy as np
import pandas as pd

BASE_DIR = Path(r'C:\Users\lsy05\serpent_data\pin_cell')
OUT_DIR = Path(r'C:\Users\lsy05\serpent_data\test\data')
OUT_DIR.mkdir(parents=True, exist_ok=True)

# All isotopes present in SERPENT output
TARGET_ISOTOPES = [
    'U233', 'U234', 'U235', 'U236', 'U238',
    'Th232', 'Pa233',
    'Np237', 'Pu238', 'Pu239', 'Pu240', 'Pu241', 'Pu242',
    'Am241', 'Am243'
]

# Table isotopes for adens comparison
TABLE_ISOTOPES = [
    'Th232', 'Pa233', 'U233', 'U234', 'U235', 'U236', 'U238',
    'Np237', 'Pu238', 'Pu239', 'Pu240', 'Pu241', 'Pu242',
    'Am241', 'Am243'
]

RE_BURNUP = re.compile(r"MAT_(?:blanket|seed)_BURNUP\s*=\s*\[([^\]]+)\];", re.I)
RE_CONV = re.compile(r"CONVERSION_RATIO\s*\(idx.*?\)\s*=\s*\[\s*([0-9Ee+\-\.]+)\s+([0-9Ee+\-\.]+)\s*\];", re.I)
RE_KEFF = re.compile(r"ANA_KEFF\s*\(idx.*?\)\s*=\s*\[\s*([0-9Ee+\-\.]+)\s+([0-9Ee+\-\.]+)\s+([0-9Ee+\-\.]+)\s+")
RE_MDENS_BLOCK = re.compile(r"MAT_(?:blanket|seed)_MDENS\s*=\s*\[", re.I)
RE_ADENS_BLOCK = re.compile(r"MAT_(?:blanket|seed)_ADENS\s*=\s*\[", re.I)
RE_BLOCK_END = re.compile(r"\];")


def parse_mat_block(lines, start_idx):
    """Parse a MATLAB block starting at given line index."""
    out = []
    for ln in lines[start_idx:]:
        out.append(ln.rstrip('\n'))
        if RE_BLOCK_END.search(ln):
            break
    return out


def parse_mdens_rows(block_lines):
    """Parse mass density rows from MATLAB block."""
    rows = []
    for ln in block_lines:
        ln = ln.strip()
        if not ln or ln.startswith('MAT_fuel_MDENS'):
            continue
        if ln.startswith('];'):
            break
        parts = ln.split('%')
        nums_part = parts[0].strip().lstrip('[').rstrip(']')
        nums = [float(x) for x in re.findall(r'[+-]?[0-9]*\.?[0-9]+(?:[Ee][+-]?\d+)?', nums_part)]
        if nums:
            rows.append(nums)
    return rows


def parse_names(lines):
    """Parse isotope names from NAMES block."""
    names = []
    inside = False
    for ln in lines:
        if 'NAMES' in ln and '=' in ln:
            inside = True
        if inside:
            if '];' in ln:
                inside = False
                break
            m = re.search(r"'([^']+)'", ln)
            if m:
                names.append(m.group(1).strip())
    return names


def extract_comment_names(block_lines):
    """Extract isotope names from MATLAB comment lines (after %)."""
    comment_names = []
    for ln in block_lines:
        if '%' in ln:
            tail = ln.split('%')[-1].strip()
            if tail:
                comment_names.append(tail)
    return comment_names


def parse_matlab_array_simple(text, name):
    """Parse simple MATLAB array for burnup values."""
    m = RE_BURNUP.search(text)
    if m:
        values_str = m.group(1)
        nums = re.findall(r'[+-]?[0-9]*\.?[0-9]+(?:[Ee][+-]?\d+)?', values_str)
        return [float(x) for x in nums]
    return []


def normalize_iso_key(name):
    """Normalize isotope name for matching."""
    key = name.strip().upper()
    if key.startswith('I') and len(key) > 1 and key[1].isalpha():
        key = key[1:]
    return re.sub(r'[^A-Z0-9]', '', key)


def find_isotope_series(data_map, iso):
    """Find isotope data series in data map."""
    if iso in data_map:
        return data_map[iso]
    norm = normalize_iso_key(iso)
    for key, vals in data_map.items():
        normalized = normalize_iso_key(key)
        if normalized == norm:
            return vals
        if normalized.startswith(norm):
            return vals
    return None


def extract_dep(path):
    """Extract depletion data from .sss_dep.m file."""
    text = path.read_text(encoding='utf-8', errors='ignore').splitlines()
    full_text = '\n'.join(text)
    names = parse_names(text)
    burnup_vals = parse_matlab_array_simple(full_text, 'MAT_fuel_BURNUP')

    mdens_start = None
    for i, ln in enumerate(text):
        if RE_MDENS_BLOCK.search(ln):
            mdens_start = i
            break
    mdens_map = {}
    if mdens_start is not None:
        mdens_block = parse_mat_block(text, mdens_start)
        mdens_rows = parse_mdens_rows(mdens_block)
        comment_names = extract_comment_names(mdens_block)
        mapping_names = comment_names if len(comment_names) == len(mdens_rows) else names[:len(mdens_rows)]
        for nm, row in zip(mapping_names, mdens_rows):
            nm = nm.replace("\n", '').strip()
            mdens_map[nm] = row

    adens_start = None
    for i, ln in enumerate(text):
        if RE_ADENS_BLOCK.search(ln):
            adens_start = i
            break
    adens_map = {}
    if adens_start is not None:
        adens_block = parse_mat_block(text, adens_start)
        adens_rows = parse_mdens_rows(adens_block)
        comment_names = extract_comment_names(adens_block)
        mapping_names = comment_names if len(comment_names) == len(adens_rows) else names[:len(adens_rows)]
        for nm, row in zip(mapping_names, adens_rows):
            nm = nm.replace("\n", '').strip()
            adens_map[nm] = row

    return mdens_map, adens_map, burnup_vals


def extract_res(path):
    """Extract results from .sss_res.m file."""
    text = path.read_text(encoding='utf-8', errors='ignore')

    conv_vals = [float(m.group(1)) for m in RE_CONV.finditer(text)]
    unique_conv = []
    for v in conv_vals:
        if not unique_conv or abs(unique_conv[-1] - v) > 1e-12:
            unique_conv.append(v)

    keff_vals = []
    for m in RE_KEFF.finditer(text):
        keff_vals.append(float(m.group(1)))
    unique_keff = []
    for v in keff_vals:
        if not unique_keff or abs(unique_keff[-1] - v) > 1e-12:
            unique_keff.append(v)

    return unique_conv, unique_keff


def load_pin_case(case_dir, case_name):
    """Load pin_cell case data."""
    dep_file = case_dir / f"{case_name}.sss_dep.m"
    res_file = case_dir / f"{case_name}.sss_res.m"

    mdens_map, adens_map, burnup_vals = {}, {}, []
    conv_vals, keff_vals = [], []

    if dep_file.exists():
        mdens_map, adens_map, burnup_vals = extract_dep(dep_file)
    if res_file.exists():
        conv_vals, keff_vals = extract_res(res_file)

    n_steps = min(
        len(burnup_vals), len(conv_vals), len(keff_vals),
        max((len(mdens_map.get(iso, [])) for iso in TARGET_ISOTOPES), default=0),
    )
    n_steps = max(n_steps, 0)

    rows = []
    for step in range(n_steps):
        keff = keff_vals[step] if step < len(keff_vals) else None
        burnup = burnup_vals[step] if step < len(burnup_vals) else None
        conv = conv_vals[step] if step < len(conv_vals) else None
        reactivity = ((keff - 1) / keff * 1e5) if keff and keff != 0 else None
        efpd = burnup / 0.038 if burnup else None

        row = {
            'BURN_STEP': step,
            'case': case_name,
            'burnup_MWd_kgHM': burnup,
            'EFPD': efpd,
            'ANA_KEFF': keff,
            'reactivity_pcm': reactivity,
            'conversion_ratio': conv,
        }
        for iso in TARGET_ISOTOPES:
            series = find_isotope_series(mdens_map, iso)
            row[f'Mdens_{iso}'] = series[step] if series and step < len(series) else None
        for iso in TARGET_ISOTOPES:
            series = find_isotope_series(adens_map, iso)
            row[f'Adens_{iso}'] = series[step] if series and step < len(series) else None
        rows.append(row)

    return pd.DataFrame(rows)


def get_adens_at_burnup(df, target_burnup, isotope_list):
    """Get atomic density for isotopes at target burnup."""
    burnup_arr = df['burnup_MWd_kgHM'].values
    idx = np.argmin(np.abs(burnup_arr - target_burnup))
    row = df.iloc[idx]

    result = {}
    for iso in isotope_list:
        col = f'Adens_{iso}'
        if col in row.index:
            val = row[col]
            result[iso] = val if pd.notna(val) else None
        else:
            result[iso] = None
    return result, burnup_arr[idx]


def generate_adens_table(df_blanket, df_seed, blanket_target, seed_target, outdir):
    """Generate atomic density comparison table."""
    seed_data, seed_actual = get_adens_at_burnup(df_seed, seed_target, TABLE_ISOTOPES)
    blanket_data, blanket_actual = get_adens_at_burnup(df_blanket, blanket_target, TABLE_ISOTOPES)

    rows = []
    for iso in TABLE_ISOTOPES:
        seed_val = seed_data.get(iso)
        blanket_val = blanket_data.get(iso)

        seed_str = f'{seed_val:.6e}' if seed_val is not None else 'N/A'
        blanket_str = f'{blanket_val:.6e}' if blanket_val is not None else 'N/A'

        rows.append({
            'Isotope': iso,
            'Seed': seed_str,
            'Blanket': blanket_str
        })

    table_df = pd.DataFrame(rows)

    # Save to CSV with title comment
    out_path = outdir / 'adens_comparison.csv'
    title_comment = f'# Isotopic Number Density Predicted by SERPENT (Seed: {seed_target} MWd/kgHM, Blanket: {blanket_target} MWd/kgHM)'
    with open(out_path, 'w') as f:
        f.write(title_comment + '\n')
    table_df.to_csv(out_path, index=False, mode='a')

    print(f'Saved: {out_path}')
    return table_df


def main():
    print('=== Pin Cell Data Extraction ===')

    # Load data
    blanket_dir = BASE_DIR / 'blanket'
    seed_dir = BASE_DIR / 'seed'

    print('Loading blanket...')
    df_blanket = load_pin_case(blanket_dir, 'pin_cell')

    print('Loading seed...')
    df_seed = load_pin_case(seed_dir, 'pin_cell2')

    print(f'Blanket: {len(df_blanket)} burnup steps')
    print(f'Seed: {len(df_seed)} burnup steps')

    if df_blanket.empty or df_seed.empty:
        print('ERROR: No data loaded. Check input files.')
        sys.exit(1)

    # Save to CSV
    blanket_csv = OUT_DIR / 'pin_cell_blanket.csv'
    seed_csv = OUT_DIR / 'pin_cell_seed.csv'
    adens_csv = OUT_DIR / 'adens_comparison.csv'

    df_blanket.to_csv(blanket_csv, index=False)
    df_seed.to_csv(seed_csv, index=False)
    print(f'Saved: {blanket_csv}')
    print(f'Saved: {seed_csv}')

    # Generate adens comparison table
    BLANKET_TARGET_BURNUP = 80.0
    SEED_TARGET_BURNUP = 155.0
    print(f'\nGenerating atomic density comparison table...')
    print(f'Blanket target: {BLANKET_TARGET_BURNUP} MWd/kgHM')
    print(f'Seed target: {SEED_TARGET_BURNUP} MWd/kgHM')

    blanket_actual = df_blanket['burnup_MWd_kgHM'].max()
    seed_actual = df_seed['burnup_MWd_kgHM'].max()
    print(f'Blanket max burnup in data: {blanket_actual:.2f} MWd/kgHM')
    print(f'Seed max burnup in data: {seed_actual:.2f} MWd/kgHM')

    if blanket_actual < BLANKET_TARGET_BURNUP:
        print(f'  WARNING: Target {BLANKET_TARGET_BURNUP} > max {blanket_actual:.2f}, using max')
    if seed_actual < SEED_TARGET_BURNUP:
        print(f'  WARNING: Target {SEED_TARGET_BURNUP} > max {seed_actual:.2f}, using max')

    generate_adens_table(df_blanket, df_seed, BLANKET_TARGET_BURNUP, SEED_TARGET_BURNUP, OUT_DIR)

    # Print summary
    print('\n--- Data Summary ---')
    print(f'Blanket keff range: {df_blanket["ANA_KEFF"].min():.4f} - {df_blanket["ANA_KEFF"].max():.4f}')
    print(f'Seed keff range: {df_seed["ANA_KEFF"].min():.4f} - {df_seed["ANA_KEFF"].max():.4f}')
    print(f'Blanket burnup range: {df_blanket["burnup_MWd_kgHM"].min():.2f} - {blanket_actual:.2f} MWd/kgHM')
    print(f'Seed burnup range: {df_seed["burnup_MWd_kgHM"].min():.2f} - {seed_actual:.2f} MWd/kgHM')

    print('\n=== Extraction complete ===')
    print(f'Output: {OUT_DIR}')


if __name__ == '__main__':
    main()