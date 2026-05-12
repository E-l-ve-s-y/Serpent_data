"""Core analysis placeholder module."""

from __future__ import annotations

import argparse
from typing import Dict


def run_core_analysis(homogenized_constants: dict) -> dict:
    """Stub for full-core diffusion/transport analysis.

    Args:
        homogenized_constants: Group-constant payload for one case/burnup.

    Returns:
        dict: {'keff': float, 'power_peaking': float, 'flux_shape': array}

    Raises:
        NotImplementedError: Always, until user plugs in real solver.
    """
    raise NotImplementedError("User to implement with full-core solver")


def main() -> None:
    """CLI entry point for demonstrating stub behavior."""
    parser = argparse.ArgumentParser(description="Run core analysis stub")
    parser.parse_args()
    try:
        run_core_analysis({})
    except NotImplementedError as exc:
        print(str(exc))


if __name__ == "__main__":
    main()
