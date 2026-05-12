"""Quick plotting utility over processed data."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse

import pandas as pd

from scripts.analysis.conversion import plot_cr_with_target
from scripts.analysis.reactivity import plot_keff
from scripts.serpent_utils import load_config


def main() -> None:
    """Generate quick example plots."""
    parser = argparse.ArgumentParser(description="Generate example plots")
    parser.add_argument("--case", required=True)
    args = parser.parse_args()

    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    data = pd.read_parquet(root / cfg["paths"]["processed_root"] / "data.parquet")
    case_df = data[data["case_id"] == args.case].sort_values("burnup_GWd_tHM")

    out = root / cfg["paths"]["plots_root"] / f"case_{args.case}"
    out.mkdir(parents=True, exist_ok=True)
    plot_keff(case_df, out / "keff_example.png")
    plot_cr_with_target(case_df, out, target=cfg["analysis"]["cr_target"])


if __name__ == "__main__":
    main()
