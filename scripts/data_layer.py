"""SQLite data-lake layer for processed outputs."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

if __package__ is None or __package__ == "":
    sys.path.append(str(Path(__file__).resolve().parent.parent))

import pandas as pd
from sqlalchemy import create_engine

from scripts.serpent_utils import load_config



def get_engine():
    """Return SQLAlchemy engine for processed/data_lake.db."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    db_path = root / cfg["paths"]["processed_root"] / "data_lake.db"
    db_path.parent.mkdir(parents=True, exist_ok=True)
    return create_engine(f"sqlite:///{db_path}")


def sync_parquet_to_sqlite() -> None:
    """Load parquet outputs into sqlite tables."""
    cfg = load_config()
    root = Path(__file__).resolve().parent.parent
    processed = root / cfg["paths"]["processed_root"]
    engine = get_engine()
    data = processed / "data.parquet"
    group_constants = processed / "group_constants.parquet"
    spectra = processed / "detector_spectra.parquet"

    if data.exists():
        pd.read_parquet(data).to_sql("data", engine, if_exists="replace", index=False)
    if group_constants.exists():
        pd.read_parquet(group_constants).to_sql("group_constants", engine, if_exists="replace", index=False)
    if spectra.exists():
        pd.read_parquet(spectra).to_sql("detector_spectra", engine, if_exists="replace", index=False)


def main() -> None:
    """CLI entrypoint for syncing parquet outputs into sqlite."""
    parser = argparse.ArgumentParser(description="Sync parquet outputs to sqlite data_lake.db")
    parser.parse_args()
    sync_parquet_to_sqlite()


if __name__ == "__main__":
    main()
