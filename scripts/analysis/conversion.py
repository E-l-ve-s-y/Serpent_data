"""Conversion ratio analysis module."""

from __future__ import annotations

from pathlib import Path
from typing import Optional, Tuple

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd


def plot_cr_with_target(df: pd.DataFrame, output_dir: str | Path, target: float = 1.0) -> Path:
    """Plot conversion ratio against burnup and target threshold."""
    out_dir = Path(output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    out = out_dir / "conversion_ratio_vs_burnup.png"

    fig, ax = plt.subplots(figsize=(6, 4))
    ax.plot(df["burnup_GWd_tHM"], df["conversion_ratio"], marker="o", label="CR")
    ax.axhline(target, color="red", linestyle="--", label=f"Target={target:.2f}")
    ax.set_xlabel("Burnup [GWd/tHM]")
    ax.set_ylabel("Conversion ratio")
    ax.grid(True, alpha=0.3)
    ax.legend()
    fig.tight_layout()
    fig.savefig(out, dpi=150)
    plt.close(fig)
    return out


def identify_crossover_burnup(df: pd.DataFrame, target: float = 1.0) -> Optional[float]:
    """Find interpolated burnup where conversion ratio reaches target."""
    x = df["burnup_GWd_tHM"].to_numpy(dtype=float)
    y = df["conversion_ratio"].to_numpy(dtype=float)
    eps = 1e-9
    for i in range(1, len(x)):
        y0, y1 = y[i - 1], y[i]
        if abs(y0 - target) < eps:
            return float(x[i - 1])
        if (y0 - target) * (y1 - target) <= 0:
            if y1 == y0:
                return float(x[i])
            frac = (target - y0) / (y1 - y0)
            return float(x[i - 1] + frac * (x[i] - x[i - 1]))
    return None


def calculate_cr_average(df: pd.DataFrame, burnup_range: Tuple[float, float] = (0, 50)) -> float:
    """Calculate mean conversion ratio over burnup range."""
    lo, hi = burnup_range
    sel = df[(df["burnup_GWd_tHM"] >= lo) & (df["burnup_GWd_tHM"] <= hi)]
    if sel.empty:
        return float("nan")
    return float(np.nanmean(sel["conversion_ratio"].to_numpy(dtype=float)))
