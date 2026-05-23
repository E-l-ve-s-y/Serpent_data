#!/usr/bin/env python3
from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from _adapters import not_implemented

if __name__ == '__main__':
    raise SystemExit(not_implemented('plot_power_peaking.py', 'implement power peaking extraction first, then wire plotting here.'))
