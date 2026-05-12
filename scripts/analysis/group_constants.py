"""Few-group constants post-processing module."""

from __future__ import annotations

from pathlib import Path
from typing import Dict

import matplotlib.pyplot as plt
import pandas as pd


def plot_xs_vs_burnup(gc_df: pd.DataFrame, xs_name: str = "INF_ABS", output_dir: str | None = None) -> Path:
    """Plot selected XS quantity versus burnup by group."""
    out_dir = Path(output_dir or ".")
    out_dir.mkdir(parents=True, exist_ok=True)
    out = out_dir / f"{xs_name.lower()}_vs_burnup.png"

    fig, ax = plt.subplots(figsize=(6, 4))
    for group, gdf in gc_df.groupby("group"):
        if xs_name in gdf.columns:
            ax.plot(gdf["burnup_GWd_tHM"], gdf[xs_name], marker="o", label=f"g{group}")
    ax.set_xlabel("Burnup [GWd/tHM]")
    ax.set_ylabel(xs_name)
    ax.grid(True, alpha=0.3)
    ax.legend()
    fig.tight_layout()
    fig.savefig(out, dpi=150)
    plt.close(fig)
    return out


def export_for_core_analysis(gc_df: pd.DataFrame, case_id: str, burnup_step: float) -> Dict[str, object]:
    """Export homogenized constants for external core solver interfaces."""
    subset = gc_df[(gc_df["case_id"] == case_id) & (gc_df["burnup_GWd_tHM"] == burnup_step)]
    subset = subset.sort_values("group")
    return {
        "case_id": case_id,
        "burnup": burnup_step,
        "groups": int(len(subset)),
        "D": subset.get("INF_DIFFCOE", pd.Series(dtype=float)).to_numpy().tolist(),
        "Sigma_a": subset.get("INF_ABS", pd.Series(dtype=float)).to_numpy().tolist(),
        "Sigma_f": subset.get("INF_FISS", pd.Series(dtype=float)).to_numpy().tolist(),
        "nuSigma_f": subset.get("INF_NSF", pd.Series(dtype=float)).to_numpy().tolist(),
        "chi": [1.0] + [0.0] * max(int(len(subset)) - 1, 0),
        "scatter_matrix": [],
    }


def compute_homogenized_constants(df: pd.DataFrame, gc_df: pd.DataFrame) -> pd.DataFrame:
    """Combine burnup-dependent inventory and group constants tables."""
    keys = ["case_id", "burnup_GWd_tHM"]
    merged = gc_df.merge(df[keys + ["conversion_ratio", "ANA_KEFF"]], on=keys, how="left")
    return merged
