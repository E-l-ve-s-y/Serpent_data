"""Reactivity-oriented analysis utilities."""

from __future__ import annotations

import matplotlib.pyplot as plt
import pandas as pd


def plot_keff(df: pd.DataFrame, output_path: str) -> None:
    """Plot k-eff versus burnup."""
    fig, ax = plt.subplots(figsize=(6, 4))
    ax.plot(df["burnup_GWd_tHM"], df["ANA_KEFF"], marker="o")
    ax.set_xlabel("Burnup [GWd/tHM]")
    ax.set_ylabel("k_eff")
    ax.grid(True, alpha=0.3)
    fig.tight_layout()
    fig.savefig(output_path, dpi=150)
    plt.close(fig)
