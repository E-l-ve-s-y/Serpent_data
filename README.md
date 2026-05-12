# Serpent Data Workflow for Thorium-Based High-CR PWR Analysis

Python workflow for post-processing existing Serpent 2 outputs into production-ready data layers for plotting, optimization, and AI-agent queries.

## Project overview

This repository transforms raw Serpent burnup outputs into:
- `processed/data.parquet` (main burnup table)
- `processed/group_constants.parquet` (few-group constants)
- `processed/detector_spectra.parquet` (detector spectra)
- `processed/data_lake.db` (SQLite data lake)
- analysis plots and per-case summary reports

**Important:** This project does **not** generate Serpent input cards. Users provide input cards and run Serpent manually.

## Prerequisites

1. Serpent input cards available in `input_cards/`
2. Serpent execution done manually by user
3. Raw outputs copied into `raw_outputs/<CASE_ID>/`

## Conversion ratio source

Conversion ratio is read directly from Serpent `_dep.m` output variable:
- `CONVERSION_RATIO` (authoritative source)

## Burnup steps

Configured burnup grid (25 steps):
`[0.1, 0.4, 0.7, 1.0, 1.3, 1.6, 2.0, 2.5, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 10.0, 12.0, 14.0, 16.0, 18.0, 20.0, 24.0, 28.0, 34.0, 42.0, 50.0]` GWd/tHM

## Installation

```bash
pip install -r requirements.txt
```

## Configuration

Edit `config.yaml` for paths, detector names, burnup steps, CR target, and cache settings.

## Workflow

1. Place input cards in `input_cards/`
2. Run Serpent manually for each case
3. Place outputs in `raw_outputs/`
4. Validate: `python scripts/validate_output.py --all`
5. Extract data: `python scripts/extract_data.py --all --spectra`
6. Extract group constants: `python scripts/extract_group_constants.py --all`
7. Analyze: `python scripts/analyze_data.py --all`
8. Query: use `scripts/query_interface.py` or SQLite directly

## Directory structure

```text
serpent_data/
├── README.md
├── AGENTS.md
├── CLAUDE.md
├── config.yaml
├── requirements.txt
├── input_cards/
├── raw_outputs/
│   ├── C011/
│   └── cases_manifest.csv
├── processed/
│   ├── data.parquet
│   ├── group_constants.parquet
│   ├── detector_spectra.parquet
│   ├── data_lake.db
│   └── exports/data.csv
├── analysis/
│   └── plots/
├── scripts/
│   ├── validate_output.py
│   ├── extract_data.py
│   ├── extract_group_constants.py
│   ├── analyze_data.py
│   ├── plot_examples.py
│   ├── data_layer.py
│   ├── cache_layer.py
│   ├── query_interface.py
│   ├── orchestrator.py
│   ├── core_stub.py
│   └── analysis/
└── tests/
```

## Testing

```bash
pytest tests/
```
