#!/usr/bin/env python3
from __future__ import annotations

import subprocess
import sys
from pathlib import Path
from typing import Sequence


def repo_root() -> Path:
    return Path(__file__).resolve().parents[3]


def run_legacy_script(relative_path: str, argv: Sequence[str]) -> int:
    legacy = repo_root() / relative_path
    if not legacy.exists():
        print(f"[adapter] Legacy script not found: {legacy}")
        return 2
    cmd = [sys.executable, str(legacy), *argv]
    completed = subprocess.run(cmd, cwd=str(repo_root()))
    return int(completed.returncode)


def not_implemented(tool_name: str, recommendation: str) -> int:
    print(f"[adapter] {tool_name} is scaffolded but not implemented in current repository.")
    print(f"[adapter] Recommendation: {recommendation}")
    return 3
