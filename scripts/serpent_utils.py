"""Shared utilities for Serpent output parsing."""

from __future__ import annotations

import logging
import re
from pathlib import Path
from typing import Dict, Iterable, List, Optional

import numpy as np
import yaml

LOGGER = logging.getLogger(__name__)
ROOT = Path(__file__).resolve().parent.parent
BURNUP_STEP_REL_TOL = 0.05


def load_config() -> dict:
    """Load repository configuration from config.yaml."""
    with (ROOT / "config.yaml").open("r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def configure_logging(level: str = "INFO") -> None:
    """Configure global logging format and level."""
    logging.basicConfig(
        level=getattr(logging, level.upper(), logging.INFO),
        format="%(asctime)s | %(levelname)s | %(name)s | %(message)s",
    )


def list_case_dirs(raw_root: Path) -> List[Path]:
    """Return case folders under raw output root."""
    return sorted([p for p in raw_root.iterdir() if p.is_dir()]) if raw_root.exists() else []


def parse_matrix(text: str, name: str) -> Optional[np.ndarray]:
    """Parse a Serpent matrix/vector assignment by name.

    Args:
        text: Full file content.
        name: Serpent variable name.

    Returns:
        Parsed numeric array or None when missing.
    """
    match = re.search(rf"\b{name}\b\s*=\s*\[(.*?)\];", text, re.DOTALL)
    if not match:
        return None
    block = match.group(1)
    rows: List[List[float]] = []
    for line in block.splitlines():
        line = line.strip()
        if not line:
            continue
        line = line.split("%", 1)[0].strip()
        if not line:
            continue
        try:
            # Serpent matrices may use Fortran-style D exponents; convert to E for Python float parsing.
            row = [float(x.replace("D", "E")) for x in line.split()]
        except ValueError:
            # Skip rows containing non-numeric metadata or malformed values.
            continue
        if row:
            rows.append(row)
    if not rows:
        return None
    width = max(len(r) for r in rows)
    arr = np.array([r + [np.nan] * (width - len(r)) for r in rows], dtype=float)
    return arr


def parse_first_col(text: str, name: str) -> Optional[np.ndarray]:
    """Parse a Serpent variable and return first column values."""
    arr = parse_matrix(text, name)
    if arr is None:
        return None
    return arr[:, 0] if arr.ndim == 2 else arr


def find_file(case_path: Path, suffix: str) -> Optional[Path]:
    """Find first file ending with suffix in case directory."""
    files = sorted(case_path.glob(f"*{suffix}"))
    return files[0] if files else None


def parse_detector_file(det_path: Path, detectors: Iterable[str]) -> Dict[str, np.ndarray]:
    """Parse configured detectors from a _det*.m file."""
    text = det_path.read_text(encoding="utf-8", errors="ignore")
    parsed: Dict[str, np.ndarray] = {}
    for det in detectors:
        arr = parse_matrix(text, f"DET{det}")
        if arr is None:
            arr = parse_matrix(text, det)
        if arr is not None:
            parsed[det] = arr
    return parsed
