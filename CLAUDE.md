# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Thorium-based fuel simulation data analysis platform for SERPENT Monte Carlo reactor simulator. Processes burnup simulation outputs (52 cases: A001-A007, B001-B012, C001-C012, D001-D020) and provides AI-driven optimization analysis.

## Common Commands

```powershell
# MUST run from results/ directory
cd results

# Extract data from SERPENT .m files -> CSV + SQLite
python script/extract_data.py

# Generate Keff/FIR/CR and isotope mass evolution plots
python script/analyze_data.py --csv data_processed/data.csv --output analysis/plots
```

## Architecture

```
results/
├── data_raw/{A001-D020}/     # Raw SERPENT output (.sss, .sss_dep.m, .sss_res.m)
├── data_processed/
│   ├── data.csv              # Extracted data (first line is # comment header)
│   └── data_lake.db          # SQLite Data Lake
├── script/
│   ├── extract_data.py       # Parse .m files -> CSV/SQLite
│   ├── data_layer.py         # SQLite DataLake + streaming (DB at results/data_lake.db)
│   ├── cache_layer.py        # L1 memory LRU + L2 Parquet cache
│   ├── analyze_data.py       # Visualization: Keff/FIR/CR + isotope plots
│   ├── agents.py             # CaseAgent / GroupAgent / TrendAgent
│   └── orchestrator.py       # Parallel analysis + multi-objective optimization
└── analysis/plots/           # Generated plots
```

### Layer Responsibilities
| Layer | Script | Purpose |
|-------|--------|---------|
| Data Extraction | `extract_data.py` | Parse .sss_dep.m / .sss_res.m files |
| Storage | `data_layer.py` | SQLite DataLake + `stream_case()` iterator |
| Caching | `cache_layer.py` | L1 LRU + L2 Parquet |
| Visualization | `analyze_data.py` | Keff/FIR/CR vs Burnup plots |
| AI Agents | `agents.py` | CaseAgent, GroupAgent, TrendAgent |
| Orchestration | `orchestrator.py` | Parallel execution, optimization |

## Key APIs

### DataLake (SQLite)
```python
from data_layer import DataLake
dl = DataLake()  # Uses results/data_lake.db

dl.count()
dl.get_case_summary("B007")   # Metadata only
dl.get_case_data("B007")      # Full DataFrame
dl.filter_cases(groups=['B'], keff_range=(1.0, 1.3))
dl.stream_case("B007", chunk_size=5)  # Memory-efficient iterator
```

### CSV Reading
CSV files have `#`-prefixed unit comment on first line:
```python
df = pd.read_csv(path, comment='#')
```

### Agents
```python
from agents import CaseAgent, GroupAgent, TrendAgent
from data_layer import DataLake

dl = DataLake()
agent = CaseAgent("B007", dl)
report = agent.analyze()
print(report.summary_text())
```

### Orchestrator
```python
from orchestrator import Orchestrator
orch = Orchestrator(max_workers=4)
orch.parallel_analyze(["A001", "B007", "C010"])
orch.optimize_design('balanced', constraints={'keff_0': (1.0, 1.3)})
orch.run_full_analysis()
```

## Case Groups

| Group | Fuel | Cases |
|-------|------|-------|
| A | U235 + U238 + Th232 | ~12 |
| B | U233 + Th232 | ~12 |
| C | Pu239 + Th232 | ~12 |
| D | Pu239 + U235 + U238 + Th232 | ~16 |

Case IDs: `A001`-`D999` (4 characters, letter + 3 digits)

## Target Isotopes

U233, U235, U238, Th232, Pa233, Pu239, Pu241, Am241, Am242, Am243, Am244, Am245, Sm149, Xe135

## Physics Constants

| Constant | Value | Usage |
|----------|-------|-------|
| POWER_DENSITY | 3.8e-2 MW/kgHM | Burnup to EFPD conversion |
| FIR | ΣM_fissile(t) / ΣM_fissile(0) | Fissile Inventory Ratio |
| CR | R_capt,Th232 / ΣR_fiss | Conversion Ratio |
| ρ (pcm) | (keff - 1) / keff × 10^5 | Reactivity |

## Data File Parsing

Always use UTF-8 with error ignore when reading `.m` files:
```python
text = path.read_text(encoding='utf-8', errors='ignore')
```

## Pitfalls

1. **Working directory**: Scripts use `sys.path.insert(0, str(Path(__file__).parent))` for relative imports. Always `cd results` before running.
2. **CSV header**: First line is `#` comment with units — read with `pd.read_csv(path, comment='#')`.
3. **Isotope name variations**: Use `normalize_iso_key()` and `find_isotope_series()` for resilient matching.
4. **SQLite path**: DataLake defaults to `results/data_lake.db`, NOT `results/script/data_lake.db`.