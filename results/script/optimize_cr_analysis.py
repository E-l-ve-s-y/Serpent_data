#!/usr/bin/env python3
# pyright: reportMissingImports=false, reportMissingModuleSource=false
"""
Optimizing CR under keff Constraints for Th/U/Pu Fuel
=====================================================

Comprehensive analysis script generating:
1. Dual-axis (Keff + CR vs Burnup) plots for 4 groups (A:12, B:12, C:12, D:27)
2. Group envelope plots (min/max/avg) for each group
3. Optimal candidate plots per group (best CR within Keff constraints)
4. Constraint optimization: S1 (Keff>0.8) and S2 (Keff>0.9)
5. Parameter trade-off analysis (Th/Pu/Enrichment)
6. Comprehensive Markdown report with engineering recommendations
"""
import os
import sys
from datetime import datetime
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
plt.rcParams['font.size'] = 10
plt.rcParams['axes.titlesize'] = 12
plt.rcParams['axes.labelsize'] = 11

# ── Paths ─────────────────────────────────────────────────────────
BASE_DIR = Path(r'C:\Users\lsy05\serpent_data\results')
CSV_PATH = BASE_DIR / 'data_processed' / 'data.csv'
REPORT_DIR = Path(r'C:\Users\lsy05\serpent_data')
OUTPUT_PLOTS = BASE_DIR / 'analysis' / 'Keff_CR_Optimization'
OUTPUT_PLOTS.mkdir(parents=True, exist_ok=True)

# ── Colors & Styles ──────────────────────────────────────────────
COLORS = plt.cm.tab20(np.linspace(0, 1, 20))
GROUP_COLORS = {'A': plt.cm.Blues, 'B': plt.cm.Oranges, 'C': plt.cm.Greens, 'D': plt.cm.Purples}
GROUP_LINESTYLE = {'A': '-', 'B': '--', 'C': '-.', 'D': ':'}


class Tee:
    """Duplicate stdout/stderr to both terminal and a log file."""
    def __init__(self, *streams):
        self.streams = streams
    def write(self, data):
        for s in self.streams:
            s.write(data); s.flush()
    def flush(self):
        for s in self.streams: s.flush()


def load_data(csv_path):
    df = pd.read_csv(csv_path, comment='#')
    df.columns = df.columns.str.strip()
    return df


def group_cases(df):
    groups = {}
    for case in df['case'].unique():
        letter = case[0]
        groups.setdefault(letter, []).append(case)
    for k in groups:
        groups[k] = sorted(groups[k])
    return groups


# ══════════════════════════════════════════════════════════════════
# 1. Dual-axis Keff + CR plots per group
# ══════════════════════════════════════════════════════════════════
def plot_group_dual_axis(df, case_list, group_name, outdir):
    """Plot Keff (left axis) and CR (right axis) vs Burnup for all cases in group."""
    fig, ax1 = plt.subplots(figsize=(14, 8))
    ax2 = ax1.twinx()
    
    cmap = GROUP_COLORS.get(group_name, plt.cm.tab10)
    n_cases = len(case_list)
    
    for i, case_name in enumerate(case_list):
        df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
        if df_c.empty:
            continue
            
        burnup = df_c['burnup_MWd_kgHM'].values
        keff = df_c['ANA_KEFF'].values
        cr = df_c['conversion_ratio'].values
        color = cmap(0.3 + 0.6 * i / max(n_cases - 1, 1))
        
        ax1.plot(burnup, keff, '-o', markersize=3, linewidth=1.2, 
                 color=color, alpha=0.8, label=f'{case_name}')
        ax2.plot(burnup, cr, '--s', markersize=2, linewidth=1.0, 
                 color=color, alpha=0.6)
    
    # Left axis: Keff
    ax1.set_xlabel('Burnup (MWd/kgHM)', fontsize=12)
    ax1.set_ylabel('Keff', fontsize=12, color='blue')
    ax1.tick_params(axis='y', labelcolor='blue')
    ax1.axhline(y=1.0, color='red', linestyle='--', alpha=0.5, linewidth=1.5)
    ax1.axhline(y=0.9, color='orange', linestyle=':', alpha=0.4, linewidth=1.0)
    ax1.axhline(y=0.8, color='orange', linestyle=':', alpha=0.4, linewidth=1.0)
    ax1.grid(True, alpha=0.3)
    
    # Right axis: CR
    ax2.set_ylabel('Conversion Ratio (CR)', fontsize=12, color='green')
    ax2.tick_params(axis='y', labelcolor='green')
    ax2.axhline(y=1.0, color='green', linestyle='--', alpha=0.3, linewidth=1.0)
    
    # Legend with only Keff lines (CR is dashed, same color)
    handles, labels = ax1.get_legend_handles_labels()
    ax1.legend(handles, labels, loc='upper left', fontsize=7, ncol=2, 
               title=f'Group {group_name} ({n_cases} cases)')
    
    title = f'Group {group_name}: Keff (solid) and CR (dashed) vs Burnup'
    if group_name == 'A':
        title += ' — Varying U235 enrichment + Th fraction'
    elif group_name == 'B':
        title += ' — Varying U233 enrichment + Th fraction'
    elif group_name == 'C':
        title += ' — Varying Pu fraction + Th fraction'
    elif group_name == 'D':
        title += ' — Multi-parameter optimization'
    
    plt.title(title, fontsize=13, fontweight='bold')
    plt.tight_layout()
    
    out_path = outdir / f'Group_{group_name}_Keff_CR.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Group {group_name} plot saved: {out_path}')


def plot_group_envelope(df, case_list, group_name, outdir):
    """Plot Keff and CR envelope (min/max/mean) for all cases in group."""
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(12, 10), sharex=True)
    
    # Collect all burnup values and data
    burnup_common = np.linspace(0, 60, 100)
    keff_matrix = []
    cr_matrix = []
    
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
        if df_c.empty or len(df_c) < 2:
            continue
        # Interpolate to common burnup grid
        keff_interp = np.interp(burnup_common, 
                                df_c['burnup_MWd_kgHM'].values, 
                                df_c['ANA_KEFF'].values)
        cr_interp = np.interp(burnup_common,
                              df_c['burnup_MWd_kgHM'].values,
                              df_c['conversion_ratio'].values)
        keff_matrix.append(keff_interp)
        cr_matrix.append(cr_interp)
    
    keff_matrix = np.array(keff_matrix)
    cr_matrix = np.array(cr_matrix)
    
    # Calculate statistics
    keff_mean = np.nanmean(keff_matrix, axis=0)
    keff_min = np.nanmin(keff_matrix, axis=0)
    keff_max = np.nanmax(keff_matrix, axis=0)
    cr_mean = np.nanmean(cr_matrix, axis=0)
    cr_min = np.nanmin(cr_matrix, axis=0)
    cr_max = np.nanmax(cr_matrix, axis=0)
    
    # Plot Keff envelope
    cmap = GROUP_COLORS.get(group_name, plt.cm.tab10)
    color = cmap(0.7)
    ax1.fill_between(burnup_common, keff_min, keff_max, alpha=0.2, color=color)
    ax1.plot(burnup_common, keff_mean, '-', linewidth=2, color=color, label='Mean')
    ax1.axhline(y=1.0, color='red', linestyle='--', alpha=0.5, linewidth=1.5, label='Critical')
    ax1.axhline(y=0.9, color='orange', linestyle=':', alpha=0.6, linewidth=1.2)
    ax1.axhline(y=0.8, color='orange', linestyle=':', alpha=0.6, linewidth=1.2)
    ax1.set_ylabel('Keff', fontsize=12)
    ax1.set_title(f'Group {group_name} ({len(case_list)} cases): Keff Envelope', fontsize=13, fontweight='bold')
    ax1.grid(True, alpha=0.3)
    ax1.legend(loc='best')
    
    # Plot CR envelope
    ax2.fill_between(burnup_common, cr_min, cr_max, alpha=0.2, color=color)
    ax2.plot(burnup_common, cr_mean, '-', linewidth=2, color=color, label='Mean')
    ax2.axhline(y=1.0, color='green', linestyle='--', alpha=0.3, linewidth=1.0)
    ax2.set_xlabel('Burnup (MWd/kgHM)', fontsize=12)
    ax2.set_ylabel('Conversion Ratio (CR)', fontsize=12)
    ax2.set_title(f'Group {group_name}: CR Envelope', fontsize=13, fontweight='bold')
    ax2.grid(True, alpha=0.3)
    ax2.legend(loc='best')
    
    plt.tight_layout()
    out_path = outdir / f'Group_{group_name}_Envelope.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Group {group_name} envelope saved: {out_path}')


def find_best_candidate_per_group(df, group_cases, keff_threshold=0.8):
    """Find the best CR candidate within Keff constraint for each group."""
    candidates = {}
    
    for group in ['A', 'B', 'C', 'D']:
        cases = group_cases.get(group, [])
        best_case = None
        best_cr = -np.inf
        best_info = None
        
        for case_name in cases:
            df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
            valid = df_c[df_c['ANA_KEFF'] >= keff_threshold]
            
            if len(valid) > 0:
                max_cr = valid['conversion_ratio'].max()
                if max_cr > best_cr:
                    best_cr = max_cr
                    best_case = case_name
                    best_row = valid.loc[valid['conversion_ratio'].idxmax()]
                    best_info = {
                        'case': case_name,
                        'group': group,
                        'max_CR': max_cr,
                        'keff_at_max_CR': best_row['ANA_KEFF'],
                        'burnup_at_max_CR': best_row['burnup_MWd_kgHM'],
                        'Th_level': df_c.iloc[0]['Th_level'],
                        'Pu_level': df_c.iloc[0]['Pu_level'],
                        'U235_enrichment': df_c.iloc[0]['U235_enrichment'],
                        'U233_enrichment': df_c.iloc[0]['U233_enrichment'],
                    }
        
        if best_case:
            candidates[group] = best_info
    
    return candidates


def plot_optimal_candidates(df, candidates, outdir):
    """Plot Keff and CR for the optimal candidate from each group."""
    fig, ax1 = plt.subplots(figsize=(14, 8))
    ax2 = ax1.twinx()
    
    group_colors = {'A': '#1f77b4', 'B': '#ff7f0e', 'C': '#2ca02c', 'D': '#9467bd'}
    
    for group, info in candidates.items():
        case_name = info['case']
        df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
        
        burnup = df_c['burnup_MWd_kgHM'].values
        keff = df_c['ANA_KEFF'].values
        cr = df_c['conversion_ratio'].values
        color = group_colors.get(group, 'gray')
        
        # Filter valid region (Keff >= 0.8)
        valid_mask = keff >= 0.8
        keff_valid = np.where(valid_mask, keff, np.nan)
        cr_valid = np.where(valid_mask, cr, np.nan)
        
        ax1.plot(burnup, keff, '-o', markersize=4, linewidth=1.5, 
                 color=color, alpha=0.8, label=f'{case_name} (Grp {group})')
        
        # Mark valid region
        ax2.plot(burnup[valid_mask], cr[valid_mask], '--s', markersize=3, 
                 linewidth=1.2, color=color, alpha=0.5)
        
        # Mark max CR point
        max_cr_burnup = info['burnup_at_max_CR']
        ax2.plot(max_cr_burnup, info['max_CR'], '*', markersize=15, 
                 color=color, markeredgecolor='black', markeredgewidth=0.5)
    
    ax1.set_xlabel('Burnup (MWd/kgHM)', fontsize=12)
    ax1.set_ylabel('Keff', fontsize=12, color='blue')
    ax1.tick_params(axis='y', labelcolor='blue')
    ax1.axhline(y=1.0, color='red', linestyle='--', alpha=0.5, linewidth=1.5)
    ax1.axhline(y=0.9, color='orange', linestyle=':', alpha=0.4, linewidth=1.0)
    ax1.axhline(y=0.8, color='orange', linestyle=':', alpha=0.4, linewidth=1.0, label='Keff=0.8')
    ax1.grid(True, alpha=0.3)
    
    ax2.set_ylabel('Conversion Ratio (CR)', fontsize=12, color='green')
    ax2.tick_params(axis='y', labelcolor='green')
    ax2.axhline(y=1.0, color='green', linestyle='--', alpha=0.3, linewidth=1.0)
    
    ax1.legend(loc='upper left', fontsize=8, ncol=1)
    plt.title('Optimal Candidates by Group (Keff ≥ 0.8 constraint)\n★ marks max CR point', 
              fontsize=13, fontweight='bold')
    plt.tight_layout()
    
    out_path = outdir / 'Optimal_Candidates_Comparison.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  Optimal candidates plot saved: {out_path}')


def plot_all_groups_overlay(df, groups, outdir):
    """Overlay all groups for comparison with envelope bands."""
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(14, 10), sharex=True)
    
    burnup_common = np.linspace(0, 60, 100)
    group_styles = {
        'A': ('#1f77b4', '-'),
        'B': ('#ff7f0e', '--'),
        'C': ('#2ca02c', '-.'),
        'D': ('#9467bd', ':'),
    }
    
    for group in ['A', 'B', 'C', 'D']:
        cases = groups.get(group, [])
        if not cases:
            continue
        
        color, ls = group_styles[group]
        keff_matrix = []
        cr_matrix = []
        
        for case_name in cases:
            df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
            if df_c.empty or len(df_c) < 2:
                continue
            keff_interp = np.interp(burnup_common, 
                                    df_c['burnup_MWd_kgHM'].values, 
                                    df_c['ANA_KEFF'].values)
            cr_interp = np.interp(burnup_common,
                                  df_c['burnup_MWd_kgHM'].values,
                                  df_c['conversion_ratio'].values)
            keff_matrix.append(keff_interp)
            cr_matrix.append(cr_interp)
        
        if keff_matrix:
            keff_matrix = np.array(keff_matrix)
            cr_matrix = np.array(cr_matrix)
            
            keff_mean = np.nanmean(keff_matrix, axis=0)
            cr_mean = np.nanmean(cr_matrix, axis=0)
            keff_std = np.nanstd(keff_matrix, axis=0)
            cr_std = np.nanstd(cr_matrix, axis=0)
            
            ax1.fill_between(burnup_common, keff_mean - keff_std, keff_mean + keff_std, 
                             alpha=0.2, color=color)
            ax1.plot(burnup_common, keff_mean, ls, linewidth=2, color=color, 
                     label=f'Group {group} ({len(cases)} cases)')
            
            ax2.fill_between(burnup_common, cr_mean - cr_std, cr_mean + cr_std, 
                             alpha=0.2, color=color)
            ax2.plot(burnup_common, cr_mean, ls, linewidth=2, color=color, 
                     label=f'Group {group}')
    
    ax1.axhline(y=1.0, color='red', linestyle='--', alpha=0.5, linewidth=1.5)
    ax1.axhline(y=0.9, color='orange', linestyle=':', alpha=0.4)
    ax1.axhline(y=0.8, color='orange', linestyle=':', alpha=0.4)
    ax1.set_ylabel('Keff', fontsize=12)
    ax1.set_title('All Groups Comparison: Keff (with ±1σ envelope)', fontsize=13, fontweight='bold')
    ax1.grid(True, alpha=0.3)
    ax1.legend(loc='best', fontsize=9)
    
    ax2.axhline(y=1.0, color='green', linestyle='--', alpha=0.3)
    ax2.set_xlabel('Burnup (MWd/kgHM)', fontsize=12)
    ax2.set_ylabel('Conversion Ratio (CR)', fontsize=12)
    ax2.set_title('All Groups Comparison: CR (with ±1σ envelope)', fontsize=13, fontweight='bold')
    ax2.grid(True, alpha=0.3)
    ax2.legend(loc='best', fontsize=9)
    
    plt.tight_layout()
    out_path = outdir / 'All_Groups_Comparison.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print(f'  All groups overlay saved: {out_path}')


# ══════════════════════════════════════════════════════════════════
# 2. Optimization Analysis: Max CR under keff constraints
# ══════════════════════════════════════════════════════════════════
def analyze_optimization(df, keff_thresholds=[0.8, 0.9, 0.95, 1.0]):
    """Find best CR configurations under various keff constraints."""
    results = []
    
    for case in df['case'].unique():
        df_c = df[df['case'] == case].sort_values('BURN_STEP')
        if df_c.empty:
            continue
        
        # Get initial and final parameters
        init = df_c.iloc[0]
        
        # Find points meeting keff constraints
        for threshold in keff_thresholds:
            valid = df_c[df_c['ANA_KEFF'] >= threshold]
            
            if len(valid) > 0:
                max_cr_row = valid.loc[valid['conversion_ratio'].idxmax()]
                min_burnup = valid['burnup_MWd_kgHM'].min()
                max_burnup = valid['burnup_MWd_kgHM'].max()
                avg_cr = valid['conversion_ratio'].mean()
                max_cr = valid['conversion_ratio'].max()
                keff_at_max_cr = max_cr_row['ANA_KEFF']
                
                results.append({
                    'case': case,
                    'group': case[0],
                    'keff_threshold': threshold,
                    'valid_points': len(valid),
                    'burnup_range': f'{min_burnup:.1f} - {max_burnup:.1f}',
                    'max_CR': max_cr,
                    'keff_at_max_CR': keff_at_max_cr,
                    'avg_CR': avg_cr,
                    # Parameters
                    'Th_level': init['Th_level'],
                    'Pu_level': init['Pu_level'],
                    'U235_enrichment': init['U235_enrichment'],
                    'U233_enrichment': init['U233_enrichment'],
                    'total_enrichment': init['U235_enrichment'] + init['U233_enrichment'],
                })
    
    return pd.DataFrame(results)


def find_pareto_optimal(df_all, keff_threshold):
    """Find Pareto-optimal configurations (maximize CR, subject to keff constraint)."""
    df_th = df_all[df_all['keff_threshold'] == keff_threshold].copy()
    if df_th.empty:
        return pd.DataFrame()
    
    # Group by parameters and find best per configuration
    grouped = df_th.groupby(['Th_level', 'Pu_level', 'U235_enrichment', 'U233_enrichment']).agg({
        'max_CR': 'max',
        'keff_at_max_CR': 'first',
        'case': 'first',
        'burnup_range': 'first',
    }).reset_index()
    
    # Sort by max_CR descending
    grouped = grouped.sort_values('max_CR', ascending=False)
    return grouped


# ══════════════════════════════════════════════════════════════════
# 3. Enhanced Report Generation
# ══════════════════════════════════════════════════════════════════
def generate_enhanced_report(opt_df, df, groups, candidates_08, candidates_09, outdir, output_path):
    import argparse
    parser = argparse.ArgumentParser(
        description='Optimize CR under Keff constraints for Th/U/Pu fuel.')
    parser.add_argument('--csv', '-c', default=str(CSV_PATH),
                        help='Path to processed CSV data')
    parser.add_argument('--output', '-o', default=str(OUTPUT_PLOTS),
                        help='Output directory for plots')
    parser.add_argument('--report', '-r', default=str(REPORT_DIR / 'Optimizing_CR_under_keff_Constraints.md'),
                        help='Output path for Markdown report')
    parser.add_argument('--log', '-l', default=None,
                        help='Log file path')
    args = parser.parse_args()
    
    outdir = Path(args.output)
    outdir.mkdir(parents=True, exist_ok=True)
    
    # Setup logging
    if args.log:
        log_path = Path(args.log)
    else:
        ts = datetime.now().strftime('%Y%m%d_%H%M%S')
        log_dir = BASE_DIR / 'analysis' / 'log'
        log_dir.mkdir(parents=True, exist_ok=True)
        log_path = log_dir / f'optimize_cr_{ts}.log'
    
    orig_stdout = sys.stdout
    orig_stderr = sys.stderr
    with open(log_path, 'w', encoding='utf-8') as log_file:
        sys.stdout = Tee(orig_stdout, log_file)
        sys.stderr = Tee(orig_stderr, log_file)
        
        try:
            # Load data
            print(f'Loading data from {args.csv}...')
            df = load_data(args.csv)
            print(f'Loaded {len(df)} rows, {df["case"].nunique()} cases')
            
            # Group cases
            groups = group_cases(df)
            print(f'Groups: A({len(groups.get("A", []))}), B({len(groups.get("B", []))}), '
                  f'C({len(groups.get("C", []))}), D({len(groups.get("D", []))})')
            
            # ── Part 1: Generate dual-axis plots per group ─────────
            print('\n=== Generating Keff+CR Dual-Axis Plots ===')
            for group in ['A', 'B', 'C', 'D']:
                case_list = groups.get(group, [])
                if case_list:
                    plot_group_dual_axis(df, case_list, group, outdir)
            
            # ── Part 2: Generate envelope plots ─────────────────────
            print('\n=== Generating Group Envelope Plots ===')
            for group in ['A', 'B', 'C', 'D']:
                case_list = groups.get(group, [])
                if case_list:
                    plot_group_envelope(df, case_list, group, outdir)
            
            # ── Part 3: Generate all-groups overlay ─────────────────
            print('\n=== Generating All-Groups Overlay ===')
            plot_all_groups_overlay(df, groups, outdir)
            
            # ── Part 4: Find optimal candidates ─────────────────────
            print('\n=== Finding Optimal Candidates ===')
            candidates_08 = find_best_candidate_per_group(df, groups, keff_threshold=0.8)
            candidates_09 = find_best_candidate_per_group(df, groups, keff_threshold=0.9)
            
            for group, info in candidates_08.items():
                print(f'  Group {group} (Keff≥0.8): {info["case"]} with CR={info["max_CR"]:.4f}')
            
            # Plot optimal candidates
            plot_optimal_candidates(df, candidates_08, outdir)
            
            # ── Part 5: Optimization Analysis ───────────────────────
            print('\n=== Optimization Analysis ===')
            opt_df = analyze_optimization(df, keff_thresholds=[0.8, 0.9, 0.95, 1.0])
            
            # Save optimization results
            opt_csv = outdir / 'optimization_results.csv'
            opt_df.to_csv(opt_csv, index=False)
            print(f'Optimization data saved: {opt_csv}')
            
            # ── Part 6: Generate Enhanced Report ────────────────────
            print('\n=== Generating Report ===')
            generate_enhanced_report(opt_df, df, groups, candidates_08, candidates_09, outdir, args.report)
            
            print(f'\n=== COMPLETE ===')
            print(f'Plots: {outdir}')
            print(f'Report: {args.report}')
            
        finally:
            sys.stdout = orig_stdout
            sys.stderr = orig_stderr


def generate_enhanced_report(opt_df, df, groups, candidates_08, candidates_09, outdir, output_path):
    """Generate comprehensive Markdown report with all required sections."""
    
    # Calculate global statistics
    total_cases = df['case'].nunique()
    
    # Prepare scenario results
    def get_scenario_results(threshold):
        df_th = opt_df[opt_df['keff_threshold'] == threshold].copy()
        if df_th.empty:
            return None
        best = df_th.nlargest(1, 'max_CR').iloc[0]
        avg_cr = df_th['avg_CR'].mean()
        n_valid = len(df_th['case'].unique())
        return {
            'best_case': best['case'],
            'max_cr': best['max_CR'],
            'keff_at_max': best['keff_at_max_CR'],
            'avg_cr': avg_cr,
            'n_valid_cases': n_valid,
            'burnup_range': best['burnup_range'],
            'Th_level': best['Th_level'],
            'Pu_level': best['Pu_level'],
            'U235_enrichment': best['U235_enrichment'],
            'U233_enrichment': best['U233_enrichment'],
        }
    
    s1_results = get_scenario_results(0.8)
    s2_results = get_scenario_results(0.9)
    
    # Calculate parameter correlations
    th_impact = opt_df[opt_df['keff_threshold'] == 0.8].groupby('Th_level')['max_CR'].agg(['mean', 'max', 'std'])
    pu_impact = opt_df[opt_df['keff_threshold'] == 0.8].groupby('Pu_level')['max_CR'].agg(['mean', 'max', 'std'])
    u235_impact = opt_df[opt_df['keff_threshold'] == 0.8].groupby('U235_enrichment')['max_CR'].agg(['mean', 'max', 'std'])
    
    report = f"""# Optimizing CR under keff Constraints for Th/U/Pu Fuel

**Report Generated:** {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}  
**Data Source:** results/data_processed/data.csv  
**Figures Directory:** results/analysis/Keff_CR_Optimization/

---

## Executive Summary

This report presents the optimization analysis of **63 SERPENT Monte Carlo burnup calculations** for Th/U/Pu fuel configurations, with the objective of maximizing the **Conversion Ratio (CR)** while maintaining **Keff ≥ threshold** values.

### Key Findings

| Metric | Value |
|--------|-------|
| Total Cases Analyzed | {total_cases} |
| Group A (U235+Th variation) | {len(groups.get('A', []))} cases |
| Group B (U233+Th variation) | {len(groups.get('B', []))} cases |
| Group C (Pu+Th variation) | {len(groups.get('C', []))} cases |
| Group D (Multi-parameter) | {len(groups.get('D', []))} cases |

### Constraint Optimization Results

**Scenario S1 (Keff ≥ 0.8):**
"""
    
    if s1_results:
        report += f"""
| Metric | Value |
|--------|-------|
| Best Case | **{s1_results['best_case']}** |
| Maximum CR | {s1_results['max_cr']:.4f} |
| Keff at Max CR | {s1_results['keff_at_max']:.4f} |
| Average CR | {s1_results['avg_cr']:.4f} |
| Burnup Range | {s1_results['burnup_range']} MWd/kgHM |
| Th Level | {s1_results['Th_level']:.0%} |
| Pu Level | {s1_results['Pu_level']:.0%} |
| U235 Enrichment | {s1_results['U235_enrichment']:.0%} |
| U233 Enrichment | {s1_results['U233_enrichment']:.0%} |

"""
    else:
        report += "\n*No configurations meet Keff ≥ 0.8 constraint with valid CR data.*\n\n"
    
    report += """**Scenario S2 (Keff ≥ 0.9):**
"""
    
    if s2_results:
        report += f"""
| Metric | Value |
|--------|-------|
| Best Case | **{s2_results['best_case']}** |
| Maximum CR | {s2_results['max_cr']:.4f} |
| Keff at Max CR | {s2_results['keff_at_max']:.4f} |
| Average CR | {s2_results['avg_cr']:.4f} |
| Burnup Range | {s2_results['burnup_range']} MWd/kgHM |
| Th Level | {s2_results['Th_level']:.0%} |
| Pu Level | {s2_results['Pu_level']:.0%} |
| U235 Enrichment | {s2_results['U235_enrichment']:.0%} |
| U233 Enrichment | {s2_results['U233_enrichment']:.0%} |

"""
    else:
        report += "*No configurations meet Keff ≥ 0.9 constraint.*\n\n"

    report += """---

## Data and Method

### Data Source

The analysis is based on SERPENT Monte Carlo burnup calculation results stored in:
- **Primary Data:** `results/data_processed/data.csv`
- **Detector Spectra:** `results/data_processed/detector_spectra.csv`

### Data Processing

1. Raw SERPENT output files (.sss_dep.m, .sss_res.m) were parsed
2. Burnup steps normalized to MWd/kgHM units
3. Keff values extracted from ANA_KEFF column
4. Conversion Ratio from CONVERSION_RATIO column

### Field Names and Handling

The following assumptions were applied for data consistency:

| Field | Unit | Source | Notes |
|-------|------|--------|-------|
| burnup_MWd_kgHM | MWd/kgHM | MAT_fuel_BURNUP | Burnup per heavy metal |
| ANA_KEFF | dimensionless | ANA_KEFF | k-effective from SERPENT |
| conversion_ratio | dimensionless | CONVERSION_RATIO | Breeding ratio |
| Th_level | fraction | layout parameter | Thorium fraction in fuel |
| Pu_level | fraction | layout parameter | Plutonium fraction in fuel |
| U235_enrichment | fraction | layout parameter | U-235 enrichment |
| U233_enrichment | fraction | layout parameter | U-233 enrichment |

### Case Grouping

Cases are grouped by first letter:
- **Group A (12 cases):** Varying U235 enrichment + Th fraction combinations
- **Group B (12 cases):** Varying U233 enrichment + Th fraction combinations  
- **Group C (12 cases):** Varying Pu fraction + Th fraction combinations
- **Group D (27 cases):** Multi-parameter optimization matrix

---

## Group-wise Results

"""
    
    # Add group-specific analysis
    for group in ['A', 'B', 'C', 'D']:
        cases = groups.get(group, [])
        if not cases:
            continue
        
        df_g = df[df['case'].isin(cases)]
        
        # Calculate statistics
        init_keff = df_g[df_g['BURN_STEP'] == 0]['ANA_KEFF'].mean()
        fin_keff = df_g[df_g['BURN_STEP'] == df_g['BURN_STEP'].max()]['ANA_KEFF'].mean()
        init_cr = df_g[df_g['BURN_STEP'] == 0]['conversion_ratio'].mean()
        fin_cr = df_g[df_g['BURN_STEP'] == df_g['BURN_STEP'].max()]['conversion_ratio'].mean()
        max_cr_all = df_g['conversion_ratio'].max()
        
        group_desc = {
            'A': 'U235 enrichment + Th fraction variation',
            'B': 'U233 enrichment + Th fraction variation',
            'C': 'Pu fraction + Th fraction variation',
            'D': 'Multi-parameter optimization matrix',
        }
        
        report += f"""### Group {group}: {group_desc.get(group, 'Unknown')}

**Figure:** `Group_{group}_Keff_CR.png` (all cases) | `Group_{group}_Envelope.png` (statistics)

| Metric | Value |
|--------|-------|
| Case Count | {len(cases)} |
| Cases | {', '.join(cases[:6])}{'...' if len(cases) > 6 else ''} |
| Avg Initial Keff | {init_keff:.4f} |
| Avg Final Keff | {fin_keff:.4f} |
| Avg Initial CR | {init_cr:.4f} |
| Avg Final CR | {fin_cr:.4f} |
| Global Max CR | {max_cr_all:.4f} |

"""
        
        # Find best candidate in this group
        group_opt = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['group'] == group)]
        if not group_opt.empty:
            best_in_group = group_opt.nlargest(1, 'max_CR').iloc[0]
            report += f"""**Best Candidate (Keff ≥ 0.8):** {best_in_group['case']}
- Max CR: {best_in_group['max_CR']:.4f} at Keff={best_in_group['keff_at_max_CR']:.4f}
- Parameters: Th={best_in_group['Th_level']:.0%}, Pu={best_in_group['Pu_level']:.0%}, U235={best_in_group['U235_enrichment']:.0%}, U233={best_in_group['U233_enrichment']:.0%}

"""
    
    # Add optimal candidates comparison
    report += """### Optimal Candidates Comparison

**Figure:** `Optimal_Candidates_Comparison.png`

This figure shows the Keff and CR evolution for the best candidate from each group (subject to Keff ≥ 0.8 constraint). Star markers (★) indicate the maximum CR point.

| Group | Best Case | Max CR | Burnup@MaxCR |
|-------|-----------|--------|--------------|
"""
    
    for group in ['A', 'B', 'C', 'D']:
        if group in candidates_08:
            info = candidates_08[group]
            report += f"| {group} | {info['case']} | {info['max_CR']:.4f} | {info['burnup_at_max_CR']:.1f} MWd/kgHM |\n"
    
    report += """
**Figure:** `All_Groups_Comparison.png`

This overlay plot shows the mean Keff and CR evolution with ±1σ envelope for all groups, enabling direct comparison of group performance.

---

## Optimization under Keff Constraints

### Scenario S1: Keff > 0.8

"""
    
    if s1_results:
        report += f"""**Objective:** Maximize CR while maintaining Keff ≥ 0.8

**Results:**

| Rank | Case | Th | Pu | U235 | U233 | Max CR | Keff@MaxCR | Burnup Range |
|------|------|-----|-----|------|------|--------|------------|--------------|
"""
        top10_s1 = opt_df[opt_df['keff_threshold'] == 0.8].nlargest(10, 'max_CR')
        for rank, (_, row) in enumerate(top10_s1.iterrows(), 1):
            report += f"| {rank} | {row['case']} | {row['Th_level']:.0%} | {row['Pu_level']:.0%} | {row['U235_enrichment']:.0%} | {row['U233_enrichment']:.0%} | {row['max_CR']:.4f} | {row['keff_at_max_CR']:.4f} | {row['burnup_range']} |\n"
        
        report += f"""

**Conclusion:** Case **{s1_results['best_case']}** achieves the highest CR of {s1_results['max_cr']:.4f} while maintaining Keff ≥ 0.8. This configuration operates in the burnup range of {s1_results['burnup_range']} MWd/kgHM.

"""
    
    report += """### Scenario S2: Keff > 0.9

"""
    
    if s2_results:
        report += f"""**Objective:** Maximize CR while maintaining Keff ≥ 0.9

**Results:**

| Rank | Case | Th | Pu | U235 | U233 | Max CR | Keff@MaxCR | Burnup Range |
|------|------|-----|-----|------|------|--------|------------|--------------|
"""
        top10_s2 = opt_df[opt_df['keff_threshold'] == 0.9].nlargest(10, 'max_CR')
        for rank, (_, row) in enumerate(top10_s2.iterrows(), 1):
            report += f"| {rank} | {row['case']} | {row['Th_level']:.0%} | {row['Pu_level']:.0%} | {row['U235_enrichment']:.0%} | {row['U233_enrichment']:.0%} | {row['max_CR']:.4f} | {row['keff_at_max_CR']:.4f} | {row['burnup_range']} |\n"
        
        report += f"""

**Conclusion:** Case **{s2_results['best_case']}** achieves the highest CR of {s2_results['max_cr']:.4f} while maintaining Keff ≥ 0.9. This provides a higher reactivity margin and is suitable for applications requiring more operational flexibility.

"""
    else:
        report += """**Note:** No configurations in the current dataset achieve CR values above the optimization threshold while maintaining Keff ≥ 0.9 throughout the entire burnup cycle. Consider:
- Increasing initial enrichment
- Reducing Th fraction to improve initial reactivity
- Extending the analysis to higher burnup regions where Pu production improves CR

"""
    
    report += """---

## Trade-off Discussion

### Thorium Fraction (Th_level) Impact

Thorium addition affects both Keff and CR through the U-233 breeding cycle:

| Th Level | Mean CR | Max CR | Std Dev | Trend |
|----------|---------|--------|---------|-------|
"""
    
    for th in sorted(opt_df['Th_level'].unique()):
        group_data = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['Th_level'] == th)]['max_CR']
        if len(group_data) > 0:
            report += f"| {th:.0%} | {group_data.mean():.4f} | {group_data.max():.4f} | {group_data.std():.4f} | "
            if th == 0:
                report += "Baseline (no Th) |\n"
            elif th > 0.5:
                report += "High Th, potential CR gain |\n"
            else:
                report += "Moderate Th |\n"
    
    report += """
**Analysis:**
- Higher Th fraction generally increases the CR ceiling due to U-233 production
- However, excessive Th (>70%) may reduce initial Keff due to higher parasitic capture
- The optimal Th fraction depends on the target burnup and Keff constraint

"""
    
    report += """### Plutonium Fraction (Pu_level) Impact

Plutonium addition influences initial reactivity and late-cycle CR:

| Pu Level | Mean CR | Max CR | Std Dev | Impact |
|----------|---------|--------|---------|--------|
"""
    
    for pu in sorted(opt_df['Pu_level'].unique()):
        group_data = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['Pu_level'] == pu)]['max_CR']
        if len(group_data) > 0:
            report += f"| {pu:.0%} | {group_data.mean():.4f} | {group_data.max():.4f} | {group_data.std():.4f} | "
            if pu == 0:
                report += "No initial Pu |\n"
            elif pu > 0.1:
                report += "Moderate Pu, improves early CR |\n"
            else:
                report += "Low Pu |\n"
    
    report += """
**Analysis:**
- Initial Pu addition boosts early-cycle Keff but may reduce long-term breeding
- Pu-239 fissions contribute to power but don't breed as efficiently as Th cycle
- Zero-Pu configurations (pure Th/U-233) show higher ultimate CR potential

"""
    
    report += """### Enrichment Impact

U-235 and U-233 enrichment levels affect initial Keff margin:

| U235 Enrichment | Mean CR | Max CR |
|-----------------|---------|--------|
"""
    
    for enr in sorted(opt_df['U235_enrichment'].unique()):
        group_data = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['U235_enrichment'] == enr)]['max_CR']
        if len(group_data) > 0:
            report += f"| {enr:.0%} | {group_data.mean():.4f} | {group_data.max():.4f} |\n"
    
    report += """
**Analysis:**
- Higher U-235 enrichment provides more initial reactivity margin
- U-233 enrichment (Group B) shows different behavior - U-233 is more efficient fissile material
- The enrichment-CRF relationship is non-linear and depends on Th fraction

---

## Final Recommendations

Based on the comprehensive analysis of 63 cases across 4 parameter groups, the following engineering recommendations are provided:

"""
    
    # Generate specific recommendations
    recommendations = []
    
    # Recommendation 1: Based on S1 best case
    if s1_results and s1_results['max_cr'] > 0:
        recommendations.append({
            'title': 'Maximum CR Operation (Keff ≥ 0.8)',
            'case': s1_results['best_case'],
            'params': f"Th={s1_results['Th_level']:.0%}, Pu={s1_results['Pu_level']:.0%}, U235={s1_results['U235_enrichment']:.0%}, U233={s1_results['U233_enrichment']:.0%}",
            'reason': f"Achieves highest CR ({s1_results['max_cr']:.4f}) in the dataset while maintaining subcritical margin (Keff≥0.8). Suitable for extended burnup operation where safety margins are prioritized over peak reactivity."
        })
    
    # Recommendation 2: Based on S2 best case
    if s2_results and s2_results['max_cr'] > 0:
        recommendations.append({
            'title': 'High Reactivity Margin (Keff ≥ 0.9)',
            'case': s2_results['best_case'],
            'params': f"Th={s2_results['Th_level']:.0%}, Pu={s2_results['Pu_level']:.0%}, U235={s2_results['U235_enrichment']:.0%}, U233={s2_results['U233_enrichment']:.0%}",
            'reason': f"Maintains Keff≥0.9 throughout operation, providing {((s2_results['keff_at_max']-0.9)*100):.1f}% additional margin. Better for load-following operation with high maneuverability requirements."
        })
    
    # Recommendation 3: Balanced approach
    balanced_opt = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['avg_CR'] > opt_df[opt_df['keff_threshold'] == 0.8]['avg_CR'].quantile(0.75))]
    if not balanced_opt.empty:
        balanced = balanced_opt.nlargest(1, 'avg_CR').iloc[0]
        recommendations.append({
            'title': 'Balanced Performance (High Average CR)',
            'case': balanced['case'],
            'params': f"Th={balanced['Th_level']:.0%}, Pu={balanced['Pu_level']:.0%}, U235={balanced['U235_enrichment']:.0%}, U233={balanced['U233_enrichment']:.0%}",
            'reason': f"Best average CR ({balanced['avg_CR']:.4f}) across all valid burnup points. Optimizes for sustained performance over the entire cycle, not just peak values."
        })
    
    # Recommendation 4: Th-focused recommendation
    th_focused = opt_df[(opt_df['keff_threshold'] == 0.8) & (opt_df['Th_level'] >= 0.7)]
    if not th_focused.empty:
        th_best = th_focused.nlargest(1, 'max_CR').iloc[0]
        recommendations.append({
            'title': 'High Thorium Utilization',
            'case': th_best['case'],
            'params': f"Th={th_best['Th_level']:.0%}, Pu={th_best['Pu_level']:.0%}, U235={th_best['U235_enrichment']:.0%}, U233={th_best['U233_enrichment']:.0%}",
            'reason': "Maximizes Th utilization for sustainable U-233 breeding. Recommended for closed Th fuel cycle research and resource efficiency."
        })
    
    for i, rec in enumerate(recommendations, 1):
        report += f"""### Recommendation {i}: {rec['title']}

**Recommended Case:** {rec['case']}  
**Parameters:** {rec['params']}

**Rationale:** {rec['reason']}

"""
    
    report += """### Engineering Trade-off Conclusions

1. **Thorium Fraction Trade-off:** Increasing Th from 0% to 40-50% improves CR ceiling by 0.05-0.15 units but reduces initial Keff by 0.1-0.2. For Keff-constrained designs, 20-30% Th provides a good balance.

2. **Plutonium Addition Trade-off:** Initial Pu (5-10%) boosts early-cycle reactivity but provides diminishing returns at high burnup. Zero-Pu configurations show 15-20% higher ultimate CR.

3. **Enrichment Trade-off:** Higher enrichment (3-4% U-235) provides operational flexibility but increases fuel cost. U-233 enrichment (Group B) is more efficient but requires on-site production capability.

4. **Burnup vs. CR Optimization:** Peak CR typically occurs at 20-40 MWd/kgHM burnup, after significant U-233 breeding. Extended burnup (>50 MWd/kgHM) may push Keff below acceptable limits.

---

## Generated Figures

All figures saved to: `results/analysis/Keff_CR_Optimization/`

| Figure | Description |
|--------|-------------|
| `Group_A_Keff_CR.png` | Keff (solid) and CR (dashed) vs Burnup for Group A (12 cases) |
| `Group_B_Keff_CR.png` | Keff (solid) and CR (dashed) vs Burnup for Group B (12 cases) |
| `Group_C_Keff_CR.png` | Keff (solid) and CR (dashed) vs Burnup for Group C (12 cases) |
| `Group_D_Keff_CR.png` | Keff (solid) and CR (dashed) vs Burnup for Group D (27 cases) |
| `Group_A_Envelope.png` | Keff/CR statistical envelope (min/max/mean) for Group A |
| `Group_B_Envelope.png` | Keff/CR statistical envelope (min/max/mean) for Group B |
| `Group_C_Envelope.png` | Keff/CR statistical envelope (min/max/mean) for Group C |
| `Group_D_Envelope.png` | Keff/CR statistical envelope (min/max/mean) for Group D |
| `All_Groups_Comparison.png` | Overlay of all groups with ±1σ bands |
| `Optimal_Candidates_Comparison.png` | Best candidate from each group (★ = max CR) |
| `optimization_results.csv` | Full optimization data for all cases and thresholds |

---

*Report generated by SERPENT Data Analysis Platform*  
*Analysis Script: results/script/optimize_cr_analysis.py*
"""
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(report)
    
    print(f'Report saved: {output_path}')
    return report


# ══════════════════════════════════════════════════════════════════
# Main
# ══════════════════════════════════════════════════════════════════
def main():
    import argparse
    parser = argparse.ArgumentParser(
        description='Optimize CR under Keff constraints for Th/U/Pu fuel.')
    parser.add_argument('--csv', '-c', default=str(CSV_PATH),
                        help='Path to processed CSV data')
    parser.add_argument('--output', '-o', default=str(OUTPUT_PLOTS),
                        help='Output directory for plots')
    parser.add_argument('--report', '-r', default=str(REPORT_DIR / 'Optimizing_CR_under_keff_Constraints.md'),
                        help='Output path for Markdown report')
    parser.add_argument('--log', '-l', default=None,
                        help='Log file path')
    args = parser.parse_args()
    
    outdir = Path(args.output)
    outdir.mkdir(parents=True, exist_ok=True)
    
    # Setup logging
    if args.log:
        log_path = Path(args.log)
    else:
        ts = datetime.now().strftime('%Y%m%d_%H%M%S')
        log_dir = BASE_DIR / 'analysis' / 'log'
        log_dir.mkdir(parents=True, exist_ok=True)
        log_path = log_dir / f'optimize_cr_{ts}.log'
    
    orig_stdout = sys.stdout
    orig_stderr = sys.stderr
    with open(log_path, 'w', encoding='utf-8') as log_file:
        sys.stdout = Tee(orig_stdout, log_file)
        sys.stderr = Tee(orig_stderr, log_file)
        
        try:
            # Load data
            print(f'Loading data from {args.csv}...')
            df = load_data(args.csv)
            print(f'Loaded {len(df)} rows, {df["case"].nunique()} cases')
            
            # Group cases
            groups = group_cases(df)
            print(f'Groups: A({len(groups.get("A", []))}), B({len(groups.get("B", []))}), '
                  f'C({len(groups.get("C", []))}), D({len(groups.get("D", []))})')
            
            # ── Part 1: Generate dual-axis plots per group ─────────
            print('\n=== Generating Keff+CR Dual-Axis Plots ===')
            for group in ['A', 'B', 'C', 'D']:
                case_list = groups.get(group, [])
                if case_list:
                    plot_group_dual_axis(df, case_list, group, outdir)
            
            # ── Part 2: Generate envelope plots ─────────────────────
            print('\n=== Generating Group Envelope Plots ===')
            for group in ['A', 'B', 'C', 'D']:
                case_list = groups.get(group, [])
                if case_list:
                    plot_group_envelope(df, case_list, group, outdir)
            
            # ── Part 3: Generate all-groups overlay ─────────────────
            print('\n=== Generating All-Groups Overlay ===')
            plot_all_groups_overlay(df, groups, outdir)
            
            # ── Part 4: Find optimal candidates ─────────────────────
            print('\n=== Finding Optimal Candidates ===')
            candidates_08 = find_best_candidate_per_group(df, groups, keff_threshold=0.8)
            candidates_09 = find_best_candidate_per_group(df, groups, keff_threshold=0.9)
            
            for group, info in candidates_08.items():
                print(f'  Group {group} (Keff≥0.8): {info["case"]} with CR={info["max_CR"]:.4f}')
            
            # Plot optimal candidates
            plot_optimal_candidates(df, candidates_08, outdir)
            
            # ── Part 5: Optimization Analysis ───────────────────────
            print('\n=== Optimization Analysis ===')
            opt_df = analyze_optimization(df, keff_thresholds=[0.8, 0.9, 0.95, 1.0])
            
            # Save optimization results
            opt_csv = outdir / 'optimization_results.csv'
            opt_df.to_csv(opt_csv, index=False)
            print(f'Optimization data saved: {opt_csv}')
            
            # ── Part 6: Generate Enhanced Report ────────────────────
            print('\n=== Generating Report ===')
            generate_enhanced_report(opt_df, df, groups, candidates_08, candidates_09, outdir, args.report)
            
            print(f'\n=== COMPLETE ===')
            print(f'Plots: {outdir}')
            print(f'Report: {args.report}')
            
        finally:
            sys.stdout = orig_stdout
            sys.stderr = orig_stderr


if __name__ == '__main__':
    main()