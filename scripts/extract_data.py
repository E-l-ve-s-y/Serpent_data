"""Extract burnup, inventory, keff, conversion ratio and detector data."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
import logging
import math
from typing import Dict, List, Optional

import numpy as np
import pandas as pd

from scripts.serpent_utils import (
    configure_logging,
    find_file,
    list_case_dirs,
    load_config,
    parse_first_col,
    parse_matrix,
)

LOGGER = logging.getLogger(__name__)


def _parse_nuclide_density(text: str, prefix: str) -> Dict[str, np.ndarray]:
    """Parse MAT_fuel_(M|A)DENS_<nuclide> arrays."""
    import re

    out: Dict[str, np.ndarray] = {}
    for match in re.finditer(rf"\b{prefix}_(\w+)\b\s*=\s*\[(.*?)\];", text, re.DOTALL):
        nuclide = match.group(1)
        arr = parse_matrix(match.group(0), f"{prefix}_{nuclide}")
        if arr is not None:
            out[nuclide] = arr[:, 0]
    return out


def _extract_keff_values(text: str) -> Optional[np.ndarray]:
    arr = parse_matrix(text, "ANA_KEFF")
    if arr is None:
        return None
    return arr[:, 0]


def _fuel_volume_cm3(active_height_cm: float = 365.0, radius_cm: float = 0.410) -> float:
    return math.pi * (radius_cm**2) * active_height_cm


def parse_case(case_id: str, case_path: Path, include_spectra: bool = False, active_height_cm: float = 365.0) -> tuple[pd.DataFrame, pd.DataFrame]:
    """Parse one Serpent case outputs into tabular data."""
    dep_file = find_file(case_path, "_dep.m")
    res_file = find_file(case_path, "_res.m")

    if dep_file is None or res_file is None:
        LOGGER.warning("Skipping %s: missing _dep.m or _res.m", case_id)
        return pd.DataFrame(), pd.DataFrame()

    dep_text = dep_file.read_text(encoding="utf-8", errors="ignore")
    res_text = res_file.read_text(encoding="utf-8", errors="ignore")

    burn = parse_first_col(dep_text, "MAT_fuel_BURNUP")
    efpd = parse_first_col(dep_text, "DAYS")
    cr = parse_first_col(dep_text, "CONVERSION_RATIO")
    if cr is None:
        LOGGER.warning("CONVERSION_RATIO not found for %s", case_id)
    keff = _extract_keff_values(res_text)
    mdens = _parse_nuclide_density(dep_text, "MAT_fuel_MDENS")
    adens = _parse_nuclide_density(dep_text, "MAT_fuel_ADENS")

    if burn is None or keff is None:
        LOGGER.warning("Skipping %s: missing burnup or keff", case_id)
        return pd.DataFrame(), pd.DataFrame()

    n = min(len(burn), len(keff))
    volume = _fuel_volume_cm3(active_height_cm=active_height_cm)
    rows: List[dict] = []
    for i in range(n):
        row = {
            "case_id": case_id,
            "burnup_GWd_tHM": float(burn[i]),
            "EFPD": float(efpd[i]) if efpd is not None and i < len(efpd) else np.nan,
            "ANA_KEFF": float(keff[i]),
        }
        row["reactivity_pcm"] = (row["ANA_KEFF"] - 1.0) / row["ANA_KEFF"] * 1e5
        row["conversion_ratio"] = float(cr[i]) if cr is not None and i < len(cr) else np.nan
        for nuclide, values in mdens.items():
            if i < len(values):
                row[f"Mdens_{nuclide}"] = float(values[i])
                row[f"Mass_{nuclide}_kg"] = float(values[i]) * volume / 1000.0
        for nuclide, values in adens.items():
            if i < len(values):
                row[f"Adens_{nuclide}"] = float(values[i])
        rows.append(row)

    main_df = pd.DataFrame(rows)

    spectra_df = pd.DataFrame()
    if include_spectra:
        cfg = load_config()
        detectors = cfg["serpent"]["detectors"]
        det_rows: List[dict] = []
        for det_index, det_file in enumerate(sorted(case_path.glob("*_det*.m"))):
            det_text = det_file.read_text(encoding="utf-8", errors="ignore")
            for det in detectors:
                arr = parse_matrix(det_text, f"DET{det}")
                if arr is None:
                    arr = parse_matrix(det_text, det)
                if arr is None:
                    continue
                vals = arr[:, 0]
                burn_index = min(det_index, n - 1)
                rec = {
                    "case_id": case_id,
                    "burnup_GWd_tHM": float(main_df.loc[burn_index, "burnup_GWd_tHM"]),
                    "detector": det,
                }
                for gi, v in enumerate(vals, start=1):
                    rec[f"g{gi}"] = float(v)
                    rec[f"{det}_g{gi}"] = float(v)
                det_rows.append(rec)
        spectra_df = pd.DataFrame(det_rows)

    return main_df, spectra_df


def _warn_burnup_deviation(df: pd.DataFrame, target_steps: List[float]) -> None:
    if df.empty:
        return
    target = np.array(target_steps, dtype=float)
    for step in df["burnup_GWd_tHM"].to_numpy(dtype=float):
        dev = float(np.min(np.abs(target - step)) / max(step, 1e-6))
        if dev > 0.05:
            LOGGER.warning("Burnup step %.5f deviates from configured target by >5%%", step)


def extract_data(case: str | None = None, spectra: bool = False, active_height_cm: float = 365.0) -> tuple[pd.DataFrame, pd.DataFrame]:
    """Extract data for one/all cases and write parquet outputs."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    raw_root = root / cfg["paths"]["raw_root"]
    processed_root = root / cfg["paths"]["processed_root"]
    processed_root.mkdir(parents=True, exist_ok=True)

    cases = [raw_root / case] if case else list_case_dirs(raw_root)
    data_frames: List[pd.DataFrame] = []
    spectra_frames: List[pd.DataFrame] = []

    for case_path in cases:
        if not case_path.exists():
            LOGGER.warning("Case path missing: %s", case_path)
            continue
        main_df, spec_df = parse_case(case_path.name, case_path, include_spectra=spectra, active_height_cm=active_height_cm)
        if not main_df.empty:
            data_frames.append(main_df)
            _warn_burnup_deviation(main_df, cfg["burnup"]["target_steps"])
        if not spec_df.empty:
            spectra_frames.append(spec_df)

    data_df = pd.concat(data_frames, ignore_index=True) if data_frames else pd.DataFrame()
    spectra_df = pd.concat(spectra_frames, ignore_index=True) if spectra_frames else pd.DataFrame()

    if not data_df.empty:
        data_df.to_parquet(processed_root / "data.parquet", index=False)
        exports = processed_root / "exports"
        exports.mkdir(parents=True, exist_ok=True)
        data_df.to_csv(exports / "data.csv", index=False)
    if spectra and not spectra_df.empty:
        spectra_df.to_parquet(processed_root / "detector_spectra.parquet", index=False)

    return data_df, spectra_df


def main() -> None:
    """CLI for data extraction."""
    parser = argparse.ArgumentParser(description="Extract Serpent burnup data")
    parser.add_argument("--case", help="Case ID")
    parser.add_argument("--all", action="store_true", help="Process all cases")
    parser.add_argument("--spectra", action="store_true", help="Extract detector spectra")
    parser.add_argument("--active-height-cm", type=float, default=365.0)
    parser.add_argument("--log-level", default="INFO")
    args = parser.parse_args()

    configure_logging(args.log_level)
    if not args.all and args.case is None:
        parser.error("Use --case CASE_ID or --all")

    extract_data(case=args.case, spectra=args.spectra, active_height_cm=args.active_height_cm)


if __name__ == "__main__":
    main()
