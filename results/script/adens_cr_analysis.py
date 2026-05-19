#!/usr/bin/env python3
# pyright: reportMissingImports=false, reportMissingModuleSource=false
"""
Adens_evolution and CR group analysis script.

Generates:
1. Per-case Adens_evolution plots (14 isotopes vs EFPD, semilogy, skip zero-only)
2. CR group analysis plots and summary CSVs for groups A, B, C, D
"""
import os
import sys
from datetime import datetime
from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

# ── Isotopes to plot ──────────────────────────────────────────────
# New isotope list: U233, U235, U238, Th232, Pa233, Pu239, Pu240, Pu241, Pu242, Am241, Am243, Sm149, Xe135
# Am241 and Am243 are merged into one plot "Am (241, 243)"
# Total: 12 plots per case

# Single isotope columns (11 plots)
SINGLE_ADENS_COLS = [
    'Adens_U233', 'Adens_U235', 'Adens_U238', 'Adens_Th232',
    'Adens_Pa233', 'Adens_Pu239', 'Adens_Pu240', 'Adens_Pu241',
    'Adens_Pu242', 'Adens_Sm149', 'Adens_Xe135',
]

# Combined Am plot (1 plot showing both Am241 and Am243)
AM_COMBINED_COLS = ['Adens_Am241', 'Adens_Am243']

# All isotopes for summary CSV
ALL_ADENS_COLS = SINGLE_ADENS_COLS + AM_COMBINED_COLS

# Labels for single isotope plots
SINGLE_LABELS = {
    'Adens_U233': 'U-233', 'Adens_U235': 'U-235', 'Adens_U238': 'U-238',
    'Adens_Th232': 'Th-232', 'Adens_Pa233': 'Pa-233', 'Adens_Pu239': 'Pu-239',
    'Adens_Pu240': 'Pu-240', 'Adens_Pu241': 'Pu-241', 'Adens_Pu242': 'Pu-242',
    'Adens_Sm149': 'Sm-149', 'Adens_Xe135': 'Xe-135',
}

# Label for combined Am plot
AM_PLOT_LABEL = 'Am (241, 243)'

# ── Paths ─────────────────────────────────────────────────────────
BASE_DIR = Path(r'C:\Users\lsy05\serpent_data\results')
CSV_PATH = BASE_DIR / 'data_processed' / 'data.csv'
ADENS_OUT = BASE_DIR / 'analysis' / 'Adens_evolution'
CR_OUT = BASE_DIR / 'analysis' / 'CR'


# ══════════════════════════════════════════════════════════════════
# Data loading
# ══════════════════════════════════════════════════════════════════
def load_data(csv_path):
    df = pd.read_csv(csv_path, comment='#')
    df.columns = df.columns.str.strip()
    return df


def group_cases(df):
    """Return dict  group_letter -> sorted list of case IDs."""
    groups = {}
    for case in df['case'].unique():
        letter = case[0]
        groups.setdefault(letter, []).append(case)
    for k in groups:
        groups[k] = sorted(groups[k])
    return groups


# ══════════════════════════════════════════════════════════════════
# 1.  Adens_evolution  per-case plots (12 separate images per case)
# ══════════════════════════════════════════════════════════════════
def plot_adens_evolution(df_case, case_name, outdir):
    """Generate 12 separate isotope plots vs EFPD for a single case.
    11 single isotope plots + 1 combined Am (241,243) plot.
    Skip isotopes where ALL values are zero. Use semilogy."""
    efpd = df_case['EFPD'].values
    case_dir = Path(outdir) / case_name
    case_dir.mkdir(parents=True, exist_ok=True)

    plotted_count = 0

    # Plot single isotope columns
    for col in SINGLE_ADENS_COLS:
        if col not in df_case.columns:
            continue
        vals = df_case[col].values
        if np.all(vals == 0):
            continue  # Skip zero-only columns

        label = SINGLE_LABELS.get(col, col.replace('Adens_', ''))
        filename = f'{label.replace(" ", "_").replace("-", "_")}.png'

        fig, ax = plt.subplots(figsize=(10, 6))
        data_masked = np.where(vals > 0, vals, np.nan)
        ax.semilogy(efpd, data_masked, 'o-', markersize=4, linewidth=1.5, color='steelblue')
        ax.set_xlabel('EFPD (day)', fontsize=12)
        ax.set_ylabel('Atomic Density (atoms/barn/cm)', fontsize=12)
        ax.set_title(f'{case_name}: {label} Atomic Density vs EFPD', fontsize=14)
        ax.grid(True, alpha=0.3)

        plt.tight_layout()
        out_path = case_dir / filename
        plt.savefig(out_path, dpi=150, bbox_inches='tight')
        plt.close()
        plotted_count += 1

    # Plot combined Am (241, 243) - only if at least one has data
    am_has_data = False
    for col in AM_COMBINED_COLS:
        if col in df_case.columns:
            vals = df_case[col].values
            if not np.all(vals == 0):
                am_has_data = True
                break

    if am_has_data:
        fig, ax = plt.subplots(figsize=(10, 6))
        colors = ['crimson', 'darkorange']
        labels_am = ['Am-241', 'Am-243']

        for col, color, label in zip(AM_COMBINED_COLS, colors, labels_am):
            if col in df_case.columns:
                vals = df_case[col].values
                data_masked = np.where(vals > 0, vals, np.nan)
                ax.semilogy(efpd, data_masked, '-o', markersize=4, linewidth=1.5,
                           color=color, label=label)

        ax.set_xlabel('EFPD (day)', fontsize=12)
        ax.set_ylabel('Atomic Density (atoms/barn/cm)', fontsize=12)
        ax.set_title(f'{case_name}: Am (241, 243) Atomic Density vs EFPD', fontsize=14)
        ax.legend(fontsize=10)
        ax.grid(True, alpha=0.3)

        plt.tight_layout()
        out_path = case_dir / 'Am_241_243.png'
        plt.savefig(out_path, dpi=150, bbox_inches='tight')
        plt.close()
        plotted_count += 1

    print(f'Case {case_name} Adens_evolution saved ({plotted_count} plots)')


# ══════════════════════════════════════════════════════════════════
# 2.  CR group analysis
# ══════════════════════════════════════════════════════════════════
META_COLS = ['BURN_STEP', 'case', 'layout_base', 'Th_level', 'Pu_level',
             'U235_enrichment', 'U233_enrichment', 'burnup_MWd_kgHM', 'EFPD']

# Updated isotope list for CR summary
ADENS_KEY = ['Adens_U233', 'Adens_U235', 'Adens_U238', 'Adens_Th232',
             'Adens_Pa233', 'Adens_Pu239', 'Adens_Pu240', 'Adens_Pu241',
             'Adens_Pu242', 'Adens_Am241', 'Adens_Am243',
             'Adens_Sm149', 'Adens_Xe135']


def build_group_summary(df, case_list):
    """Build summary DataFrame with initial/final rows for each case."""
    rows = []
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('BURN_STEP')
        if df_c.empty:
            continue
        for step_label, idx in [('initial', 0), ('final', -1)]:
            row = df_c.iloc[idx]
            out = {}
            for col in META_COLS:
                out[col] = row.get(col, np.nan)
            out['conversion_ratio'] = row.get('conversion_ratio', np.nan)
            for acol in ADENS_KEY:
                val = row.get(acol, 0)
                out[f'{acol}_{step_label}'] = val
            rows.append(out)
    return pd.DataFrame(rows)


def save_group_csv(summary_df, group_dir, group_name):
    """Save summary CSV into the group directory."""
    group_dir.mkdir(parents=True, exist_ok=True)
    csv_path = group_dir / f'{group_name}_summary.csv'
    summary_df.to_csv(csv_path, index=False)
    print(f'  {group_name} summary CSV saved to {csv_path}')


# ── Group A ───────────────────────────────────────────────────────
def plot_group_a(df, case_list, group_dir):
    """Group A: varies U235_enrichment and Th_level.
    Plots: Th mass fraction + U235 enrichment → CR impact."""
    summary = build_group_summary(df, case_list)
    save_group_csv(summary, group_dir, 'Group_A')

    init = summary[summary['BURN_STEP'] == 0]
    fin = summary[summary['BURN_STEP'] != 0]

    # Plot 1: CR initial vs Th_level, coloured by U235_enrichment
    fig, axes = plt.subplots(1, 2, figsize=(14, 6))

    for enrich in sorted(init['U235_enrichment'].unique()):
        mask_i = init['U235_enrichment'] == enrich
        mask_f = fin['U235_enrichment'] == enrich
        ax = axes[0]
        ax.scatter(init.loc[mask_i, 'Th_level'], init.loc[mask_i, 'conversion_ratio'],
                   label=f'U235={enrich:.0%}', marker='o', s=60)
        ax = axes[1]
        ax.scatter(fin.loc[mask_f, 'Th_level'], fin.loc[mask_f, 'conversion_ratio'],
                   label=f'U235={enrich:.0%}', marker='s', s=60)

    axes[0].set_xlabel('Th mass fraction', fontsize=11)
    axes[0].set_ylabel('Initial CR', fontsize=11)
    axes[0].set_title('Group A: Initial Conversion Ratio', fontsize=13)
    axes[0].legend(fontsize=9)
    axes[0].grid(True, alpha=0.3)

    axes[1].set_xlabel('Th mass fraction', fontsize=11)
    axes[1].set_ylabel('Final CR', fontsize=11)
    axes[1].set_title('Group A: Final Conversion Ratio', fontsize=13)
    axes[1].legend(fontsize=9)
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    out_path = group_dir / 'CR_vs_Th_U235.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group A CR plot saved')

    # Plot 2: CR evolution (conversion_ratio vs EFPD) per case
    fig, ax = plt.subplots(figsize=(10, 6))
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('EFPD')
        ax.plot(df_c['EFPD'], df_c['conversion_ratio'], '-o', markersize=3,
                linewidth=1.2, label=case_name)
    ax.set_xlabel('EFPD (day)', fontsize=11)
    ax.set_ylabel('Conversion Ratio', fontsize=11)
    ax.set_title('Group A: CR Evolution vs EFPD', fontsize=13)
    ax.legend(fontsize=8, ncol=2)
    ax.grid(True, alpha=0.3)
    ax.axhline(y=1.0, color='r', linestyle='--', alpha=0.5)
    plt.tight_layout()
    out_path = group_dir / 'CR_evolution.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group A CR evolution plot saved')


# ── Group B ───────────────────────────────────────────────────────
def plot_group_b(df, case_list, group_dir):
    """Group B: varies Th_level and U233_enrichment (U235=0).
    Plot: Th mass fraction → CR effect."""
    summary = build_group_summary(df, case_list)
    save_group_csv(summary, group_dir, 'Group_B')

    init = summary[summary['BURN_STEP'] == 0]
    fin = summary[summary['BURN_STEP'] != 0]

    fig, axes = plt.subplots(1, 2, figsize=(14, 6))

    for enrich in sorted(init['U233_enrichment'].unique()):
        mask_i = init['U233_enrichment'] == enrich
        mask_f = fin['U233_enrichment'] == enrich
        axes[0].scatter(init.loc[mask_i, 'Th_level'], init.loc[mask_i, 'conversion_ratio'],
                        label=f'U233={enrich:.0%}', marker='o', s=60)
        axes[1].scatter(fin.loc[mask_f, 'Th_level'], fin.loc[mask_f, 'conversion_ratio'],
                        label=f'U233={enrich:.0%}', marker='s', s=60)

    axes[0].set_xlabel('Th mass fraction', fontsize=11)
    axes[0].set_ylabel('Initial CR', fontsize=11)
    axes[0].set_title('Group B: Initial Conversion Ratio', fontsize=13)
    axes[0].legend(fontsize=9)
    axes[0].grid(True, alpha=0.3)

    axes[1].set_xlabel('Th mass fraction', fontsize=11)
    axes[1].set_ylabel('Final CR', fontsize=11)
    axes[1].set_title('Group B: Final Conversion Ratio', fontsize=13)
    axes[1].legend(fontsize=9)
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    out_path = group_dir / 'CR_vs_Th_U233.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group B CR plot saved')

    fig, ax = plt.subplots(figsize=(10, 6))
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('EFPD')
        ax.plot(df_c['EFPD'], df_c['conversion_ratio'], '-o', markersize=3,
                linewidth=1.2, label=case_name)
    ax.set_xlabel('EFPD (day)', fontsize=11)
    ax.set_ylabel('Conversion Ratio', fontsize=11)
    ax.set_title('Group B: CR Evolution vs EFPD', fontsize=13)
    ax.legend(fontsize=8, ncol=2)
    ax.grid(True, alpha=0.3)
    ax.axhline(y=1.0, color='r', linestyle='--', alpha=0.5)
    plt.tight_layout()
    out_path = group_dir / 'CR_evolution.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group B CR evolution plot saved')


# ── Group C ───────────────────────────────────────────────────────
def plot_group_c(df, case_list, group_dir):
    """Group C: varies Th_level and Pu_level (U235=0, U233=0).
    Plot: Th mass fraction → CR effect."""
    summary = build_group_summary(df, case_list)
    save_group_csv(summary, group_dir, 'Group_C')

    init = summary[summary['BURN_STEP'] == 0]
    fin = summary[summary['BURN_STEP'] != 0]

    fig, axes = plt.subplots(1, 2, figsize=(14, 6))

    for pu in sorted(init['Pu_level'].unique()):
        mask_i = init['Pu_level'] == pu
        mask_f = fin['Pu_level'] == pu
        axes[0].scatter(init.loc[mask_i, 'Th_level'], init.loc[mask_i, 'conversion_ratio'],
                        label=f'Pu={pu:.0%}', marker='o', s=60)
        axes[1].scatter(fin.loc[mask_f, 'Th_level'], fin.loc[mask_f, 'conversion_ratio'],
                        label=f'Pu={pu:.0%}', marker='s', s=60)

    axes[0].set_xlabel('Th mass fraction', fontsize=11)
    axes[0].set_ylabel('Initial CR', fontsize=11)
    axes[0].set_title('Group C: Initial Conversion Ratio', fontsize=13)
    axes[0].legend(fontsize=9)
    axes[0].grid(True, alpha=0.3)

    axes[1].set_xlabel('Th mass fraction', fontsize=11)
    axes[1].set_ylabel('Final CR', fontsize=11)
    axes[1].set_title('Group C: Final Conversion Ratio', fontsize=13)
    axes[1].legend(fontsize=9)
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    out_path = group_dir / 'CR_vs_Th_Pu.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group C CR plot saved')

    fig, ax = plt.subplots(figsize=(10, 6))
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('EFPD')
        ax.plot(df_c['EFPD'], df_c['conversion_ratio'], '-o', markersize=3,
                linewidth=1.2, label=case_name)
    ax.set_xlabel('EFPD (day)', fontsize=11)
    ax.set_ylabel('Conversion Ratio', fontsize=11)
    ax.set_title('Group C: CR Evolution vs EFPD', fontsize=13)
    ax.legend(fontsize=8, ncol=2)
    ax.grid(True, alpha=0.3)
    ax.axhline(y=1.0, color='r', linestyle='--', alpha=0.5)
    plt.tight_layout()
    out_path = group_dir / 'CR_evolution.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group C CR evolution plot saved')


# ── Group D ───────────────────────────────────────────────────────
def plot_group_d(df, case_list, group_dir):
    """Group D: multiple parameters change (U235, U233, Th, Pu).
    Plot: effects of three variables on initial and final CR."""
    summary = build_group_summary(df, case_list)
    save_group_csv(summary, group_dir, 'Group_D')

    init = summary[summary['BURN_STEP'] == 0].copy()
    fin = summary[summary['BURN_STEP'] != 0].copy()

    # Combine Th_level and Pu_level into a single "Th+Pu" label for colouring
    init['Th_Pu'] = init.apply(
        lambda r: f"Th={r['Th_level']:.0%} Pu={r['Pu_level']:.0%}", axis=1)
    fin['Th_Pu'] = fin.apply(
        lambda r: f"Th={r['Th_level']:.0%} Pu={r['Pu_level']:.0%}", axis=1)

    # Plot 1: Initial CR vs U235+U233 enrichment, grouped by Th_Pu
    fig, axes = plt.subplots(1, 2, figsize=(16, 7))
    for th_pu in sorted(init['Th_Pu'].unique()):
        mask_i = init['Th_Pu'] == th_pu
        mask_f = fin['Th_Pu'] == th_pu
        axes[0].scatter(
            init.loc[mask_i, 'U235_enrichment'] + init.loc[mask_i, 'U233_enrichment'],
            init.loc[mask_i, 'conversion_ratio'],
            label=th_pu, marker='o', s=50)
        axes[1].scatter(
            fin.loc[mask_f, 'U235_enrichment'] + fin.loc[mask_f, 'U233_enrichment'],
            fin.loc[mask_f, 'conversion_ratio'],
            label=th_pu, marker='s', s=50)

    axes[0].set_xlabel('U235 + U233 enrichment', fontsize=11)
    axes[0].set_ylabel('Initial CR', fontsize=11)
    axes[0].set_title('Group D: Initial CR vs Enrichment', fontsize=13)
    axes[0].legend(fontsize=7, ncol=2)
    axes[0].grid(True, alpha=0.3)

    axes[1].set_xlabel('U235 + U233 enrichment', fontsize=11)
    axes[1].set_ylabel('Final CR', fontsize=11)
    axes[1].set_title('Group D: Final CR vs Enrichment', fontsize=13)
    axes[1].legend(fontsize=7, ncol=2)
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    out_path = group_dir / 'CR_vs_enrichment.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group D CR vs enrichment plot saved')

    # Plot 2: CR vs Th_level coloured by Pu_level
    fig, axes = plt.subplots(1, 2, figsize=(16, 7))
    for pu in sorted(init['Pu_level'].unique()):
        mask_i = init['Pu_level'] == pu
        mask_f = fin['Pu_level'] == pu
        axes[0].scatter(init.loc[mask_i, 'Th_level'], init.loc[mask_i, 'conversion_ratio'],
                        label=f'Pu={pu:.0%}', marker='o', s=50)
        axes[1].scatter(fin.loc[mask_f, 'Th_level'], fin.loc[mask_f, 'conversion_ratio'],
                        label=f'Pu={pu:.0%}', marker='s', s=50)

    axes[0].set_xlabel('Th mass fraction', fontsize=11)
    axes[0].set_ylabel('Initial CR', fontsize=11)
    axes[0].set_title('Group D: Initial CR vs Th (by Pu level)', fontsize=13)
    axes[0].legend(fontsize=8, ncol=2)
    axes[0].grid(True, alpha=0.3)

    axes[1].set_xlabel('Th mass fraction', fontsize=11)
    axes[1].set_ylabel('Final CR', fontsize=11)
    axes[1].set_title('Group D: Final CR vs Th (by Pu level)', fontsize=13)
    axes[1].legend(fontsize=8, ncol=2)
    axes[1].grid(True, alpha=0.3)

    plt.tight_layout()
    out_path = group_dir / 'CR_vs_Th_by_Pu.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group D CR vs Th by Pu plot saved')

    # Plot 3: CR evolution per case
    fig, ax = plt.subplots(figsize=(12, 7))
    for case_name in case_list:
        df_c = df[df['case'] == case_name].sort_values('EFPD')
        ax.plot(df_c['EFPD'], df_c['conversion_ratio'], '-o', markersize=2,
                linewidth=1.0, label=case_name)
    ax.set_xlabel('EFPD (day)', fontsize=11)
    ax.set_ylabel('Conversion Ratio', fontsize=11)
    ax.set_title('Group D: CR Evolution vs EFPD', fontsize=13)
    ax.legend(fontsize=6, ncol=4)
    ax.grid(True, alpha=0.3)
    ax.axhline(y=1.0, color='r', linestyle='--', alpha=0.5)
    plt.tight_layout()
    out_path = group_dir / 'CR_evolution.png'
    plt.savefig(out_path, dpi=150, bbox_inches='tight')
    plt.close()
    print('  Group D CR evolution plot saved')


# ══════════════════════════════════════════════════════════════════
# Main
# ══════════════════════════════════════════════════════════════════
class Tee:
    """Duplicate stdout/stderr to both terminal and a log file."""

    def __init__(self, *streams):
        self.streams = streams

    def write(self, data):
        for s in self.streams:
            s.write(data)
            s.flush()

    def flush(self):
        for s in self.streams:
            s.flush()


def main():
    import argparse
    parser = argparse.ArgumentParser(
        description='Generate Adens_evolution plots and CR group analysis.')
    parser.add_argument('--csv', '-c',
                        default=str(CSV_PATH),
                        help='Path to the processed CSV data file')
    parser.add_argument('--adens-out',
                        default=str(ADENS_OUT),
                        help='Output directory for Adens_evolution plots')
    parser.add_argument('--cr-out',
                        default=str(CR_OUT),
                        help='Output directory for CR group analysis')
    parser.add_argument('--log', '-l',
                        default=None,
                        help='Path to log file. Default: <cr-out>/adens_cr_YYYYMMDD_HHMMSS.log')
    args = parser.parse_args()

    adens_dir = Path(args.adens_out)
    cr_dir = Path(args.cr_out)
    adens_dir.mkdir(parents=True, exist_ok=True)
    cr_dir.mkdir(parents=True, exist_ok=True)

    # Tee logging
    if args.log:
        log_path = Path(args.log)
    else:
        ts = datetime.now().strftime('%Y%m%d_%H%M%S')
        log_path = cr_dir / f'adens_cr_{ts}.log'
    log_path.parent.mkdir(parents=True, exist_ok=True)

    orig_stdout = sys.stdout
    orig_stderr = sys.stderr
    with open(log_path, 'a', encoding='utf-8') as log_file:
        sys.stdout = Tee(orig_stdout, log_file)
        sys.stderr = Tee(orig_stderr, log_file)
        try:
            _run(args, adens_dir, cr_dir)
        finally:
            sys.stdout = orig_stdout
            sys.stderr = orig_stderr


def _run(args, adens_dir, cr_dir):
    print(f'Loading data from {args.csv}...')
    df = load_data(args.csv)
    print(f'Loaded {len(df)} rows, {df["case"].nunique()} cases')

    groups = group_cases(df)
    print(f'Groups found: {list(groups.keys())}')

    # ── Part 1: Adens_evolution ────────────────────────────────
    print('\n=== Adens_evolution plots ===')
    for case_name in sorted(df['case'].unique()):
        df_case = df[df['case'] == case_name].sort_values('BURN_STEP')
        plot_adens_evolution(df_case, case_name, adens_dir)

    # ── Part 2: CR group analysis ──────────────────────────────
    print('\n=== CR Group Analysis ===')

    GROUP_FUNCS = {
        'A': plot_group_a,
        'B': plot_group_b,
        'C': plot_group_c,
        'D': plot_group_d,
    }

    for letter, func in GROUP_FUNCS.items():
        case_list = groups.get(letter, [])
        if not case_list:
            print(f'  Group {letter}: no cases found, skipping')
            continue
        group_dir = cr_dir / f'Group_{letter}'
        print(f'\n--- Group {letter} ({len(case_list)} cases) ---')
        func(df, case_list, group_dir)

    print(f'\n=== All outputs generated ===')
    print(f'  Adens_evolution: {adens_dir}')
    print(f'  CR analysis:     {cr_dir}')


if __name__ == '__main__':
    main()
