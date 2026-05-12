"""Batch orchestration for extraction and analysis."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from typing import List

import pandas as pd
from tqdm import tqdm

from scripts.analyze_data import analyze_case
from scripts.extract_data import extract_data
from scripts.extract_group_constants import extract_group_constants
from scripts.serpent_utils import configure_logging, list_case_dirs, load_config


def run_extraction_batch(case_ids: List[str] | None = None, spectra: bool = False) -> None:
    """Run extraction over all/specified cases in parallel."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    raw_root = root / cfg["paths"]["raw_root"]
    if case_ids is None:
        case_ids = [c.name for c in list_case_dirs(raw_root)]

    with ThreadPoolExecutor() as ex:
        futures = [ex.submit(extract_data, case_id, spectra) for case_id in case_ids]
        for _ in tqdm(as_completed(futures), total=len(futures), desc="extract"):
            pass

    with ThreadPoolExecutor() as ex:
        futures = [ex.submit(extract_group_constants, case_id) for case_id in case_ids]
        for _ in tqdm(as_completed(futures), total=len(futures), desc="group constants"):
            pass


def run_analysis_batch(case_ids: List[str] | None = None) -> None:
    """Run analysis for all/specified cases."""
    if case_ids is None:
        cfg = load_config()
        root = Path(__file__).resolve().parent.parent
        data_path = root / cfg["paths"]["processed_root"] / "data.parquet"
        if not data_path.exists():
            return
        df = pd.read_parquet(data_path)
        case_ids = sorted(df["case_id"].unique().tolist())

    for case_id in tqdm(case_ids, desc="analysis"):
        analyze_case(case_id)


def generate_matrix_report() -> pd.DataFrame:
    """Generate multi-case summary table."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    data_path = root / cfg["paths"]["processed_root"] / "data.parquet"
    if not data_path.exists():
        return pd.DataFrame()
    df = pd.read_parquet(data_path)
    return df.groupby("case_id", as_index=False).agg(
        burnup_max=("burnup_GWd_tHM", "max"),
        cr_avg=("conversion_ratio", "mean"),
        keff_avg=("ANA_KEFF", "mean"),
    )


def main() -> None:
    """CLI entrypoint for orchestration."""
    parser = argparse.ArgumentParser(description="Batch orchestrator")
    parser.add_argument("--extract", action="store_true")
    parser.add_argument("--analyze", action="store_true")
    parser.add_argument("--log-level", default="INFO")
    args = parser.parse_args()

    configure_logging(args.log_level)
    if args.extract:
        run_extraction_batch()
    if args.analyze:
        run_analysis_batch()


if __name__ == "__main__":
    main()
