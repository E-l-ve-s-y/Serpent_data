#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Scientific journal style plotting script for Pin Cell burnup analysis.
Reads data from C:\\Users\\lsy05\\serpent_data\\test\\data\\
Outputs plots to C:\\Users\\lsy05\\serpent_data\\test\\analysis\\

Style follows Nuclear Science and Engineering / Annals of Nuclear Energy conventions.
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
from pathlib import Path

DATA_DIR = Path(r'C:\Users\lsy05\serpent_data\test\data')
OUT_DIR = Path(r'C:\Users\lsy05\serpent_data\test\analysis')
OUT_DIR.mkdir(parents=True, exist_ok=True)


def plot_kinf_journal_style(df, outdir, label):
    """
    Create scientific journal style plot for Kinf (keff) vs Burnup.
    Follows Nuclear Science and Engineering / Annals of Nuclear Energy conventions.
    """
    # Configure Matplotlib for journal style
    mpl.rcParams['font.family'] = 'Arial'
    mpl.rcParams['font.size'] = 10
    mpl.rcParams['axes.linewidth'] = 1.0
    mpl.rcParams['xtick.labelsize'] = 10
    mpl.rcParams['ytick.labelsize'] = 10
    mpl.rcParams['legend.frameon'] = True
    mpl.rcParams['legend.framealpha'] = 1.0
    mpl.rcParams['legend.edgecolor'] = 'black'
    mpl.rcParams['legend.fancybox'] = False

    fig, ax = plt.subplots(figsize=(6, 5))  # 6:5 aspect ratio

    # Data
    burnup = df['burnup_MWd_kgHM'].values
    keff = df['ANA_KEFF'].values

    # Navy blue color
    navy = '#000080'

    # Plot Kinf curve
    ax.plot(burnup, keff,
            color=navy, linestyle='-', linewidth=1.75,
            marker='D', markersize=5.5,
            markerfacecolor=navy, markeredgecolor='black', markeredgewidth=0.75,
            label=label, zorder=3)

    # Only bottom and left axes visible
    ax.spines['top'].set_visible(False)
    ax.spines['right'].set_visible(False)

    # Tick direction: inward
    ax.tick_params(direction='in', length=5, width=0.8, top=False, right=False)
    ax.tick_params(which='major', length=5, width=0.8)

    # Axis ranges based on data
    x_max = min(max(burnup) * 1.05, 120)
    ax.set_xlim(0, x_max if x_max > 10 else 120)

    y_min = max(0.6, min(keff) * 0.98)
    y_max = min(1.0, max(keff) * 1.02)
    ax.set_ylim(y_min, y_max)

    # Axis labels - journal style
    ax.set_xlabel('Burnup, MWd/kgHM', fontsize=11)
    ax.set_ylabel(r'$K_{eff}$', fontsize=11)

    # Major grid lines - gray dashed, major ticks only
    ax.grid(True, which='major', linestyle='--', alpha=0.7, color='gray', linewidth=0.5)
    ax.grid(True, which='minor', linestyle='none')  # No minor grid

    # Legend - upper right, with border
    legend = ax.legend(loc='upper right', frameon=True,
                      framealpha=1.0, edgecolor='black',
                      fontsize=10, markerscale=1.0)
    # Set legend frame linewidth
    if legend:
        legend.get_frame().set_linewidth(0.8)

    # Tight layout
    plt.tight_layout()

    # Save
    out_path = outdir / f'Kinf_vs_Burnup_{label}_journal_style.png'
    plt.savefig(out_path, dpi=300, bbox_inches='tight', facecolor='white')
    plt.close()

    print(f'Saved: {out_path}')
    return out_path


def plot_kinf_combined(df_blanket, df_seed, outdir):
    """Generate separate plots for blanket and seed."""
    plot_kinf_journal_style(df_blanket, outdir, 'Blanket')
    plot_kinf_journal_style(df_seed, outdir, 'Seed')


def create_adens_latex_table(outdir):
    """Generate LaTeX table for journal submission using pre-computed adens_comparison.csv."""
    csv_path = outdir / 'adens_comparison.csv'

    if not csv_path.exists():
        print(f'Warning: {csv_path} not found, skipping LaTeX table')
        return

    # Read the CSV, skip comment lines
    df = pd.read_csv(csv_path, comment='#')

    TABLE_ISOTOPES = df['Isotope'].tolist()

    # Use fixed targets for LaTeX table header
    seed_target = 155.0
    blanket_target = 80.0

    latex_lines = [
        r'\begin{table}[htbp]',
        r'\centering',
        r'\caption{Isotopic Number Density Predicted by SERPENT (Seed: ' + f'{seed_target}' + r' MWd/kgHM, Blanket: ' + f'{blanket_target}' + r' MWd/kgHM)}',
        r'\label{tab:adens_comparison}',
        r'\begin{tabular}{lcc}',
        r'\hline\hline',
        r'Isotope & Seed & Blanket \\',
        r'\hline'
    ]

    for _, row in df.iterrows():
        iso = row['Isotope']
        seed_str = row['Seed'] if row['Seed'] != 'N/A' else '-'
        blanket_str = row['Blanket'] if row['Blanket'] != 'N/A' else '-'

        # Convert to float for LaTeX formatting if possible
        try:
            seed_val = float(seed_str)
            seed_str = f'{seed_val:.4e}'
        except:
            pass
        try:
            blanket_val = float(blanket_str)
            blanket_str = f'{blanket_val:.4e}'
        except:
            pass

        latex_lines.append(f'{iso} & ${seed_str}$ & ${blanket_str}$ \\\\')

    latex_lines.extend([
        r'\hline',
        r'\end{tabular}',
        r'\end{table}'
    ])

    latex_path = outdir / 'adens_comparison.tex'
    with open(latex_path, 'w') as f:
        f.write('\n'.join(latex_lines))

    print(f'Saved LaTeX table: {latex_path}')
    return latex_path


def print_adens_table(df_blanket, df_seed, blanket_target, seed_target):
    """Print formatted adens table to console."""
    print('\n' + '='*60)
    print(f'Isotopic Number Density Predicted by SERPENT')
    print(f'Seed @ {seed_target} MWd/kgHM | Blanket @ {blanket_target} MWd/kgHM')
    print('='*60)
    print(f'{"Isotope":<12} {"Seed":<20} {"Blanket":<20}')
    print('-'*60)

    # Read the saved CSV for consistent output
    csv_path = DATA_DIR / 'adens_comparison.csv'
    if csv_path.exists():
        df = pd.read_csv(csv_path, comment='#')
        for _, row in df.iterrows():
            print(f'{row["Isotope"]:<12} {row["Seed"]:<20} {row["Blanket"]:<20}')

    print('='*60)


def main():
    print('=== Pin Cell Analysis: Journal Style Kinf Plot ===')

    # Load data from CSV
    blanket_csv = DATA_DIR / 'blanket_data.csv'
    seed_csv = DATA_DIR / 'seed_data.csv'

    if not blanket_csv.exists() or not seed_csv.exists():
        print('ERROR: Data files not found. Run extract_pin_cell_data.py first.')
        return

    print('Loading blanket data...')
    df_blanket = pd.read_csv(blanket_csv)

    print('Loading seed data...')
    df_seed = pd.read_csv(seed_csv)

    print(f'Blanket: {len(df_blanket)} burnup steps')
    print(f'Seed: {len(df_seed)} burnup steps')

    if df_blanket.empty or df_seed.empty:
        print('ERROR: No data loaded.')
        return

    # Generate journal style plot
    print('\nGenerating journal style plot...')
    plot_kinf_combined(df_blanket, df_seed, OUT_DIR)

    # Print adens table
    BLANKET_TARGET_BURNUP = 80.0
    SEED_TARGET_BURNUP = 155.0
    print_adens_table(df_blanket, df_seed, BLANKET_TARGET_BURNUP, SEED_TARGET_BURNUP)

    # Generate LaTeX table
    print('\nGenerating LaTeX table...')
    create_adens_latex_table(OUT_DIR)

    print('\n=== Analysis complete ===')
    print(f'Output: {OUT_DIR}')


if __name__ == '__main__':
    main()