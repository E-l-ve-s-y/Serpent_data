"""Validate completeness of Serpent output files."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
import json
from typing import Dict, List

import numpy as np

from scripts.serpent_utils import (
    configure_logging,
    find_file,
    list_case_dirs,
    load_config,
    parse_first_col,
)


def validate_case(case_path: Path) -> dict:
    """Check Serpent output completeness and convergence.

    Returns:
        Dictionary containing validation status and metadata.
    """
    cfg = load_config()
    target = np.array(cfg["burnup"]["target_steps"], dtype=float)
    dep_file = find_file(case_path, "_dep.m")
    res_file = find_file(case_path, "_res.m")
    coef_file = find_file(case_path, "_coef.m")

    warnings: List[str] = []
    is_valid = True
    burnup = np.array([])
    keff_values: List[float] = []
    has_cr = False

    if dep_file is None:
        warnings.append("Missing _dep.m")
        is_valid = False
    else:
        dep_text = dep_file.read_text(encoding="utf-8", errors="ignore")
        burnup_arr = parse_first_col(dep_text, "MAT_fuel_BURNUP")
        if burnup_arr is not None:
            burnup = np.array(burnup_arr, dtype=float)
        else:
            warnings.append("MAT_fuel_BURNUP missing")
            is_valid = False
        has_cr = parse_first_col(dep_text, "CONVERSION_RATIO") is not None
        if not has_cr:
            warnings.append("CONVERSION_RATIO not found")

    if res_file is None:
        warnings.append("Missing _res.m")
        is_valid = False
    else:
        res_text = res_file.read_text(encoding="utf-8", errors="ignore")
        keff_arr = parse_first_col(res_text, "ANA_KEFF")
        if keff_arr is not None:
            keff_values = [float(x) for x in keff_arr.tolist()]
        else:
            warnings.append("ANA_KEFF missing")
            is_valid = False

    matched_steps: List[float] = []
    if burnup.size > 0:
        for step in burnup.tolist():
            if np.min(np.abs(target - step)) / max(step, 1e-6) <= 0.05:
                matched_steps.append(float(step))
            else:
                warnings.append(f"Burnup step deviation >5%: {step}")

    return {
        "is_valid": is_valid,
        "warnings": warnings,
        "burnup_steps_found": int(burnup.size),
        "burnup_steps_matched": matched_steps,
        "has_conversion_ratio": has_cr,
        "has_group_constants": coef_file is not None,
        "keff_trend": keff_values,
    }


def main() -> None:
    """CLI for case validation."""
    parser = argparse.ArgumentParser(description="Validate Serpent outputs")
    parser.add_argument("--case", help="Case ID (e.g., C011)")
    parser.add_argument("--all", action="store_true", help="Validate all cases")
    parser.add_argument("--log-level", default="INFO")
    args = parser.parse_args()

    configure_logging(args.log_level)
    cfg = load_config()
    raw_root = Path(__file__).resolve().parent.parent / cfg["paths"]["raw_root"]

    targets = [raw_root / args.case] if args.case else list_case_dirs(raw_root)
    if not args.all and args.case is None:
        parser.error("Use --case CASE_ID or --all")

    results: Dict[str, dict] = {}
    for case_path in targets:
        if not case_path.exists():
            continue
        results[case_path.name] = validate_case(case_path)

    print(json.dumps(results, indent=2))


if __name__ == "__main__":
    main()
