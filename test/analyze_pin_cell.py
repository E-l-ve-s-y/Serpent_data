#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""Generate journal-style Kinf vs burnup plots from extracted CSV data."""
from pathlib import Path
import sys

import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd

BASE_DIR = Path(r"C:\Users\lsy05\serpent_data\test")
DATA_DIR = BASE_DIR / "data"
OUT_DIR = BASE_DIR / "analysis"

BLANKET_CSV = DATA_DIR / "pin_cell_blanket.csv"
SEED_CSV = DATA_DIR / "pin_cell_seed.csv"


def auto_ylim(values, requested_min=0.6, requested_max=1.0, pad_ratio=0.02):
    data_min = float(values.min())
    data_max = float(values.max())
    if data_min >= requested_min and data_max <= requested_max:
        return requested_min, requested_max
    span = data_max - data_min
    pad = span * pad_ratio if span > 0 else 0.02
    lower = data_min - pad
    upper = data_max + pad
    if lower == upper:
        lower -= 0.02
        upper += 0.02
    return lower, upper


def plot_kinf_journal_style(df, outdir, label, xlim=None, ylim=None):
    mpl.rcParams["font.family"] = "DejaVu Sans"
    mpl.rcParams["font.size"] = 10
    mpl.rcParams["axes.linewidth"] = 1.0
    mpl.rcParams["xtick.labelsize"] = 10
    mpl.rcParams["ytick.labelsize"] = 10
    mpl.rcParams["legend.frameon"] = True
    mpl.rcParams["legend.framealpha"] = 1.0
    mpl.rcParams["legend.edgecolor"] = "black"
    mpl.rcParams["legend.fancybox"] = False

    burnup = df["burnup_MWd_kgHM"].to_numpy()
    keff = df["ANA_KEFF"].to_numpy()

    fig, ax = plt.subplots(figsize=(6, 5))
    ax.plot(
        burnup,
        keff,
        color="#000080",
        linestyle="-",
        linewidth=1.75,
        marker="D",
        markersize=5.5,
        markerfacecolor="#000080",
        markeredgecolor="black",
        markeredgewidth=0.75,
        label=label,
        zorder=3,
    )

    ax.spines["top"].set_visible(False)
    ax.spines["right"].set_visible(False)
    ax.spines["left"].set_linewidth(1.0)
    ax.spines["bottom"].set_linewidth(1.0)
    ax.spines["left"].set_color("black")
    ax.spines["bottom"].set_color("black")

    ax.tick_params(direction="in", length=5, width=0.8, top=False, right=False)

    if xlim is None:
        ax.set_xlim(0, float(burnup.max()))
    else:
        ax.set_xlim(*xlim)

    if ylim is None:
        y_min, y_max = auto_ylim(keff, 0.6, 1.0)
        ax.set_ylim(y_min, y_max)
    else:
        ax.set_ylim(*ylim)

    ax.set_xlabel("Burnup, MWd/kgHM", fontsize=11)
    ax.set_ylabel("Kinf", fontsize=11)

    ax.grid(True, which="major", linestyle="--", alpha=0.7, color="gray", linewidth=0.5)
    ax.grid(False, which="minor")

    legend = ax.legend(loc="upper right", frameon=True, fontsize=10, markerscale=1.0)
    if legend is not None:
        legend.get_frame().set_linewidth(0.9)

    fig.tight_layout()
    outdir.mkdir(parents=True, exist_ok=True)
    out_path = outdir / f"Kinf_vs_Burnup_{label}_journal_style.png"
    fig.savefig(out_path, dpi=300, bbox_inches="tight", facecolor="white")
    plt.close(fig)
    print(f"Saved: {out_path}")
    return out_path


def load_case_csv(path):
    if not path.exists():
        raise FileNotFoundError(f"Missing extracted data file: {path}")
    return pd.read_csv(path)


def main():
    print("=== Pin Cell Plotting ===")
    df_blanket = load_case_csv(BLANKET_CSV)
    df_seed = load_case_csv(SEED_CSV)

    if df_blanket.empty or df_seed.empty:
        print("ERROR: extracted data is empty. Run extract_pin_cell_data.py first.")
        sys.exit(1)

    print(f"Blanket rows: {len(df_blanket)}")
    print(f"Seed rows: {len(df_seed)}")

    print("\nGenerating blanket plot...")
    plot_kinf_journal_style(df_blanket, OUT_DIR, "Blanket")

    print("\nGenerating seed plot...")
    plot_kinf_journal_style(df_seed, OUT_DIR, "Seed", xlim=(0, 200), ylim=(0.6, 1.8))

    print(f"\nOutput directory: {OUT_DIR}")


if __name__ == "__main__":
    main()
