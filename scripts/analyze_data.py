"""Main analysis entrypoint for processed Serpent data."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
from pathlib import Path

import pandas as pd

from scripts.analysis.conversion import calculate_cr_average, identify_crossover_burnup
from scripts.analysis.group_constants import compute_homogenized_constants
from scripts.analysis.inventory import plot_inventory
from scripts.analysis.plots import generate_core_plots
from scripts.analysis.report import write_case_report
from scripts.analysis.spectra import plot_spectra
from scripts.serpent_utils import configure_logging, load_config


def analyze_case(case_id: str) -> dict:
    """Run analysis products for a single case id."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    processed = root / cfg["paths"]["processed_root"]
    data_path = processed / "data.parquet"
    gc_path = processed / "group_constants.parquet"
    spectra_path = processed / "detector_spectra.parquet"

    if not data_path.exists():
        return {}
    df = pd.read_parquet(data_path)
    case_df = df[df["case_id"] == case_id].sort_values("burnup_GWd_tHM")
    if case_df.empty:
        return {}

    gc_df = pd.read_parquet(gc_path) if gc_path.exists() else pd.DataFrame()
    case_gc = gc_df[gc_df["case_id"] == case_id].sort_values(["burnup_GWd_tHM", "group"]) if not gc_df.empty else pd.DataFrame()
    spectra_df = pd.read_parquet(spectra_path) if spectra_path.exists() else pd.DataFrame()
    case_spectra = spectra_df[spectra_df["case_id"] == case_id] if not spectra_df.empty else pd.DataFrame()

    out_dir = root / cfg["paths"]["plots_root"] / f"case_{case_id}"
    out_dir.mkdir(parents=True, exist_ok=True)
    generate_core_plots(case_df, case_gc, out_dir, cr_target=cfg["analysis"]["cr_target"])

    mass_cols = [c for c in case_df.columns if c.startswith("Mass_")][:6]
    if mass_cols:
        plot_inventory(case_df, mass_cols, out_dir / "inventory.png")

    poison_cols = [c for c in case_df.columns if any(p in c for p in ("Xe135", "Sm149", "Gd155", "Gd157"))]
    if poison_cols:
        plot_inventory(case_df, poison_cols, out_dir / "poisons.png")

    if not case_spectra.empty:
        plot_spectra(case_spectra, out_dir / "spectra.png")

    combined = compute_homogenized_constants(case_df, case_gc) if not case_gc.empty else pd.DataFrame()
    if not combined.empty:
        combined.to_parquet(processed / f"homogenized_{case_id}.parquet", index=False)

    summary = {
        "case_id": case_id,
        "burnup_min": float(case_df["burnup_GWd_tHM"].min()),
        "burnup_max": float(case_df["burnup_GWd_tHM"].max()),
        "cr_avg": calculate_cr_average(case_df),
        "cr_crossover": identify_crossover_burnup(case_df, target=cfg["analysis"]["cr_target"]),
        "cr_target": cfg["analysis"]["cr_target"],
        "keff_min": float(case_df["ANA_KEFF"].min()),
        "keff_max": float(case_df["ANA_KEFF"].max()),
    }
    write_case_report(out_dir / "summary.html", summary)
    return summary


def main() -> None:
    """CLI for analysis."""
    parser = argparse.ArgumentParser(description="Analyze processed Serpent data")
    parser.add_argument("--case", help="Case ID")
    parser.add_argument("--all", action="store_true")
    parser.add_argument("--log-level", default="INFO")
    args = parser.parse_args()

    configure_logging(args.log_level)
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    data_path = root / cfg["paths"]["processed_root"] / "data.parquet"
    if not data_path.exists():
        return
    data = pd.read_parquet(data_path)

    if args.case:
        analyze_case(args.case)
        return
    if args.all:
        for case_id in sorted(data["case_id"].unique().tolist()):
            analyze_case(case_id)
        return
    parser.error("Use --case CASE_ID or --all")


if __name__ == "__main__":
    main()
