"""Unified plotting wrappers."""

from __future__ import annotations

from pathlib import Path

import pandas as pd

from scripts.analysis.conversion import plot_cr_with_target
from scripts.analysis.group_constants import plot_xs_vs_burnup
from scripts.analysis.reactivity import plot_keff


def generate_core_plots(df: pd.DataFrame, gc_df: pd.DataFrame, out_dir: str | Path, cr_target: float = 1.0) -> None:
    """Generate standard analysis plots for one case dataset."""
    out = Path(out_dir)
    out.mkdir(parents=True, exist_ok=True)
    plot_keff(df, out / "keff_vs_burnup.png")
    plot_cr_with_target(df, out, target=cr_target)
    if not gc_df.empty:
        plot_xs_vs_burnup(gc_df, xs_name="INF_ABS", output_dir=out)
