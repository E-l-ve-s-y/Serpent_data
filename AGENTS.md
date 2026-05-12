# Serpent Data Analysis Navigator

## Quick Start

Run everything from `results/` with the system Python.

```powershell
cd results
python script/extract_data.py
python script/analyze_data.py
```

## Main Entry Points

- `results/script/analyze_data.py`: main plotting script. Generates per-case PNGs and a timestamped log in `results/analysis/plots/` unless `--log` is provided.
- `results/script/extract_data.py`: builds `results/data_processed/data.csv` and `results/data_lake.db`.
- `results/script/orchestrator.py`: batch analysis and optimization workflows.
- `results/script/agents.py`: case, group, and trend analysis agents.
- `results/script/data_layer.py`: SQLite-backed data access.
- `results/script/cache_layer.py`: cache helpers for repeated reads.

## What To Use When

- Plotting or log-format changes: focus on `results/script/analyze_data.py`.
- Database or case filtering issues: check `results/script/data_layer.py`.
- Parallel analysis or optimization logic: check `results/script/orchestrator.py` and `results/script/agents.py`.
- If the user only wants figures and logs, ignore the agent stack unless explicitly requested.

## Output Conventions

- One-line per case is preferred in console/log output, e.g. `Processing D020, pictures have been saved`.
- CSV files use a leading `#` comment header; read them with `pd.read_csv(path, comment='#')`.
- Default SQLite DB path is `results/data_lake.db`.

## Common Pitfalls

- Keep scripts aligned with the current workspace interpreter: prefer system Python, not `.venv`, unless requested.
- Run scripts from `results/` so relative imports in `results/script/` resolve correctly.
- Valid case IDs are `A001` to `D020` style identifiers; use `dl.filter_cases(groups=['A', 'B'])` for group filters.

## File Encoding

- When reading `.m` files, use `encoding='utf-8', errors='ignore'`.