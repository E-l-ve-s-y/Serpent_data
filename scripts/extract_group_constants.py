"""Extract Serpent few-group constants into parquet format."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
import logging
from typing import Dict, List

import numpy as np
import pandas as pd

from scripts.serpent_utils import configure_logging, find_file, list_case_dirs, load_config, parse_matrix

LOGGER = logging.getLogger(__name__)

GC_NAMES = ["INF_FLX", "INF_DIFFCOE", "INF_ABS", "INF_FISS", "INF_NSF", "INF_S0", "INF_S1"]


def _reshape_to_burnup_steps(arr: np.ndarray, n_steps: int) -> np.ndarray:
    arr = np.array(arr, dtype=float)
    if arr.ndim == 1:
        arr = arr[:, None]
    rows = arr.shape[0]
    if rows == n_steps:
        return arr
    if rows % n_steps == 0:
        # Handle flattened layout where values are stacked by burnup-step x group.
        g = rows // n_steps
        return arr[:, 0].reshape(n_steps, g)
    return arr[:n_steps]


def parse_case_group_constants(case_id: str, case_path: Path) -> pd.DataFrame:
    """Parse group constants from *_coef.m for one case."""
    coef_file = find_file(case_path, "_coef.m")
    if coef_file is None:
        coef_file = find_file(case_path, "_res.m")
    dep_file = find_file(case_path, "_dep.m")
    if coef_file is None or dep_file is None:
        LOGGER.warning("Skipping %s: missing group-constant source or _dep.m", case_id)
        return pd.DataFrame()

    coef_text = coef_file.read_text(encoding="utf-8", errors="ignore")
    dep_text = dep_file.read_text(encoding="utf-8", errors="ignore")

    burnup = parse_matrix(dep_text, "MAT_fuel_BURNUP")
    if burnup is None:
        LOGGER.warning("Skipping %s: MAT_fuel_BURNUP missing", case_id)
        return pd.DataFrame()
    burn = burnup[:, 0]
    n_steps = len(burn)

    parsed: Dict[str, np.ndarray] = {}
    for name in GC_NAMES:
        arr = parse_matrix(coef_text, name)
        if arr is not None:
            parsed[name] = _reshape_to_burnup_steps(arr, n_steps)

    if not parsed:
        LOGGER.warning("No group constants found for %s", case_id)
        return pd.DataFrame()

    groups = max(v.shape[1] for v in parsed.values())
    rows: List[dict] = []
    for i, bu in enumerate(burn):
        for g in range(groups):
            row = {"case_id": case_id, "burnup_GWd_tHM": float(bu), "group": g + 1}
            for name in GC_NAMES:
                arr = parsed.get(name)
                if arr is None:
                    continue
                if arr.ndim == 2 and g < arr.shape[1]:
                    row[name] = float(arr[i, g])
            rows.append(row)

    return pd.DataFrame(rows)


def extract_group_constants(case: str | None = None) -> pd.DataFrame:
    """Extract group constants for one or all cases."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    raw_root = root / cfg["paths"]["raw_root"]
    processed_root = root / cfg["paths"]["processed_root"]
    processed_root.mkdir(parents=True, exist_ok=True)

    cases = [raw_root / case] if case else list_case_dirs(raw_root)
    frames = [parse_case_group_constants(c.name, c) for c in cases if c.exists()]
    df = pd.concat([f for f in frames if not f.empty], ignore_index=True) if frames else pd.DataFrame()

    out = processed_root / "group_constants.parquet"
    if not df.empty:
        df.to_parquet(out, index=False)
        LOGGER.info("Wrote %s", out)
    return df


def main() -> None:
    """CLI entry point."""
    parser = argparse.ArgumentParser(description="Extract Serpent group constants")
    parser.add_argument("--case", help="Case ID")
    parser.add_argument("--all", action="store_true", help="Process all cases")
    parser.add_argument("--log-level", default="INFO")
    args = parser.parse_args()

    configure_logging(args.log_level)
    if not args.all and args.case is None:
        parser.error("Use --case CASE_ID or --all")
    extract_group_constants(case=args.case)


if __name__ == "__main__":
    main()
