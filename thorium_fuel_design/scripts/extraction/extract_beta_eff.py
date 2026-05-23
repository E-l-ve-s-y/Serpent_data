#!/usr/bin/env python3
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from _adapters import not_implemented

if __name__ == '__main__':
    raise SystemExit(not_implemented('extract_beta_eff.py', 'add beta_eff extraction pipeline and then map this entry to the new implementation.'))
