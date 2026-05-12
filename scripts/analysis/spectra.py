"""Spectra processing helpers."""

from __future__ import annotations

from pathlib import Path

import matplotlib.pyplot as plt
import pandas as pd


def plot_spectra(spectra_df: pd.DataFrame, output: str | Path) -> None:
    """Plot detector group spectra for first available detector."""
    if spectra_df.empty:
        return
    first = spectra_df.iloc[0]
    group_cols = [c for c in spectra_df.columns if c.startswith("g") and c[1:].isdigit()]
    if not group_cols:
        return
    xs = list(range(1, len(group_cols) + 1))
    ys = [float(first[c]) for c in group_cols]
    fig, ax = plt.subplots(figsize=(6, 4))
    ax.plot(xs, ys, marker="o")
    ax.set_xlabel("Energy group")
    ax.set_ylabel("Flux / Rate")
    ax.set_title(str(first.get("detector", "detector")))
    ax.grid(True, alpha=0.3)
    fig.tight_layout()
    fig.savefig(output, dpi=150)
    plt.close(fig)
