"""Simple markdown and HTML reporting utilities."""

from __future__ import annotations

from pathlib import Path
from typing import Dict


def write_case_report(output_path: str | Path, summary: Dict[str, object]) -> None:
    """Write a compact HTML report for one case."""
    out = Path(output_path)
    out.parent.mkdir(parents=True, exist_ok=True)
    lines = ["<html><body><h1>Case Summary</h1><ul>"]
    for k, v in summary.items():
        lines.append(f"<li><b>{k}</b>: {v}</li>")
    lines.append("</ul></body></html>")
    out.write_text("\n".join(lines), encoding="utf-8")
