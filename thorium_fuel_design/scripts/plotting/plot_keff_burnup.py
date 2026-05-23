#!/usr/bin/env python3
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from _adapters import run_legacy_script

if __name__ == '__main__':
    raise SystemExit(run_legacy_script('results/script/analyze_data.py', sys.argv[1:]))
