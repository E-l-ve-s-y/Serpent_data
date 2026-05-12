"""LLM-friendly query API over processed Serpent datasets."""

from __future__ import annotations

import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))


import argparse
from pathlib import Path
from typing import Dict, List

import pandas as pd

from scripts.serpent_utils import load_config


class QueryInterface:
    """Thin query API for AI agents and optimization scripts."""

    def __init__(self) -> None:
        cfg = load_config()
        root = Path(__file__).resolve().parent.parent
        processed = root / cfg["paths"]["processed_root"]
        self.data = pd.read_parquet(processed / "data.parquet") if (processed / "data.parquet").exists() else pd.DataFrame()
        self.gc = pd.read_parquet(processed / "group_constants.parquet") if (processed / "group_constants.parquet").exists() else pd.DataFrame()

    def get_k_eff_vs_burnup(self, case_id: str) -> pd.DataFrame:
        return self.data[self.data["case_id"] == case_id][["burnup_GWd_tHM", "ANA_KEFF"]].copy()

    def get_conversion_ratio(self, case_id: str, burnup_step: float) -> float:
        sel = self.data[(self.data["case_id"] == case_id) & (self.data["burnup_GWd_tHM"] == burnup_step)]
        return float(sel["conversion_ratio"].iloc[0]) if not sel.empty else float("nan")

    def get_critical_nuclides(self, case_id: str, time_step: int) -> List[str]:
        sel = self.data[self.data["case_id"] == case_id]
        if sel.empty or time_step >= len(sel):
            return []
        row = sel.iloc[time_step]
        return [c.replace("Mass_", "").replace("_kg", "") for c in sel.columns if c.startswith("Mass_") and pd.notna(row[c])]

    def get_group_constants(self, case_id: str, burnup_step: float, group: int) -> Dict[str, float]:
        sel = self.gc[
            (self.gc["case_id"] == case_id)
            & (self.gc["burnup_GWd_tHM"] == burnup_step)
            & (self.gc["group"] == group)
        ]
        return sel.iloc[0].to_dict() if not sel.empty else {}

    def compare_cases(self, case_ids: List[str], metric: str = "cr") -> pd.DataFrame:
        col = "conversion_ratio" if metric == "cr" else "ANA_KEFF"
        return self.data[self.data["case_id"].isin(case_ids)].groupby("case_id", as_index=False)[col].mean()

    def get_summary_stats(self, case_id: str) -> dict:
        sel = self.data[self.data["case_id"] == case_id]
        if sel.empty:
            return {}
        return {
            "case_id": case_id,
            "burnup_min": float(sel["burnup_GWd_tHM"].min()),
            "burnup_max": float(sel["burnup_GWd_tHM"].max()),
            "keff_mean": float(sel["ANA_KEFF"].mean()),
            "cr_mean": float(sel["conversion_ratio"].mean()),
            "cr_max": float(sel["conversion_ratio"].max()),
        }

    def find_best_case(self, metric: str = "cr", maximize: bool = True) -> str:
        col = "conversion_ratio" if metric == "cr" else "ANA_KEFF"
        grouped = self.data.groupby("case_id", as_index=False)[col].mean()
        if grouped.empty:
            return ""
        idx = grouped[col].idxmax() if maximize else grouped[col].idxmin()
        return str(grouped.loc[idx, "case_id"])


def get_k_eff_vs_burnup(case_id: str) -> pd.DataFrame:
    return QueryInterface().get_k_eff_vs_burnup(case_id)


def get_conversion_ratio(case_id: str, burnup_step: float) -> float:
    return QueryInterface().get_conversion_ratio(case_id, burnup_step)


def get_critical_nuclides(case_id: str, time_step: int) -> List[str]:
    return QueryInterface().get_critical_nuclides(case_id, time_step)


def get_group_constants(case_id: str, burnup_step: float, group: int) -> Dict[str, float]:
    return QueryInterface().get_group_constants(case_id, burnup_step, group)


def compare_cases(case_ids: List[str], metric: str = "cr") -> pd.DataFrame:
    return QueryInterface().compare_cases(case_ids, metric=metric)


def get_summary_stats(case_id: str) -> dict:
    return QueryInterface().get_summary_stats(case_id)


def find_best_case(metric: str = "cr", maximize: bool = True) -> str:
    return QueryInterface().find_best_case(metric=metric, maximize=maximize)


def main() -> None:
    """Minimal CLI for quick summary lookup."""
    parser = argparse.ArgumentParser(description="Query processed Serpent datasets")
    parser.add_argument("--case", required=True, help="Case ID")
    args = parser.parse_args()
    print(get_summary_stats(args.case))


if __name__ == "__main__":
    main()
