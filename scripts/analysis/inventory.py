"""Inventory and poison plotting utilities."""

from __future__ import annotations

from pathlib import Path
from typing import Iterable

import matplotlib.pyplot as plt
import pandas as pd


def plot_inventory(df: pd.DataFrame, columns: Iterable[str], output: str | Path) -> None:
    """Plot selected inventory columns against burnup."""
    fig, ax = plt.subplots(figsize=(7, 4))
    for col in columns:
        if col in df.columns:
            ax.plot(df["burnup_GWd_tHM"], df[col], label=col)
    ax.set_xlabel("Burnup [GWd/tHM]")
    ax.set_ylabel("Value")
    ax.legend(loc="best")
    ax.grid(True, alpha=0.3)
    fig.tight_layout()
    fig.savefig(output, dpi=150)
    plt.close(fig)
