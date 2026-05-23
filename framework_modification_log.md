# Framework Modification Log

Date: 2026-05-23
Repository: `E-l-ve-s-y/Serpent_data`

## 1) Objective
Based on the provided `thorium_fuel_design/` target architecture, this repository was adjusted with **minimal-risk migration**:

- Added a new framework directory `thorium_fuel_design/` to match the requested layout.
- Preserved existing executable logic in `results/script/` to avoid breaking current workflows.
- Added compatibility entry points under `thorium_fuel_design/scripts/`.

## 2) Existing Script Review and Split/Merge Decision

### A. Extraction layer
- Existing script: `results/script/extract_data.py`
- Current status: monolithic extraction script handling keff/CR/nuclides/spectrum and CSV/SQLite output.
- Decision: **暂不拆解（keep merged now）**
  - Reason: script already stable and used as a single data ingestion pipeline.
  - Migration action: created adapter entries in:
    - `thorium_fuel_design/scripts/extraction/extract_keff.py`
    - `thorium_fuel_design/scripts/extraction/extract_tfc.py`
    - `thorium_fuel_design/scripts/extraction/extract_nuclides.py`
    - `thorium_fuel_design/scripts/extraction/extract_spectrum.py`
    - `thorium_fuel_design/scripts/extraction/batch_extract_all.py`
  - All currently forward to `results/script/extract_data.py`.

### B. Analysis/plot layer
- Existing scripts:
  - `results/script/analyze_data.py`
  - `results/script/plot_CR_evolution.py`
  - `results/script/plot_neutron_spectra.py`
  - `results/script/plot_cr_keff.py`
- Current status: analysis and plotting partially mixed.
- Decision: **采用“逻辑合并 + 入口拆分”策略**
  - Keep underlying legacy implementations unchanged.
  - Add requested target entry points in `thorium_fuel_design/scripts/analysis/` and `thorium_fuel_design/scripts/plotting/` as adapters to legacy scripts.

### C. Input generation layer
- Existing script: `results/script/generate_cases.py`
- Decision: **rename mapping only (no internal split)**
  - Added `thorium_fuel_design/scripts/input_generation/generate_from_matrix.py` adapter.

### D. Batch management layer
- Existing closest capability: `results/script/agent/orchestrator.py`
- Decision: **暂时合并复用**
  - Added adapters:
    - `batch_submit.py`
    - `check_status.py`
    - `rerun_failed.py`
  - All route to orchestrator pending dedicated scheduler scripts.

### E. Not-yet-implemented modules in current repo
No direct equivalents were found for:
- `extract_power_peaking.py`
- `extract_beta_eff.py`
- `calc_burnup_endpoint.py`
- `calc_U233_enrichment.py`
- `fit_temperature_coeff.py`
- `plot_power_peaking.py`
- shared utility modules (`serpent_parser.py`, `constants.py`, `logger.py`)

Decision: **create scaffold stubs with explicit TODO guidance** (non-destructive).

## 3) Framework Changes Applied

### Created top-level framework
- `thorium_fuel_design/`
  - `00_reference/`
  - `01_homogeneous/`
  - `02_heterogeneous/`
  - `03_denatured/`
  - `04_best_candidates/`
  - `05_multi_scale/`
  - `scripts/` (with input_generation, batch_management, extraction, analysis, plotting, utils)
  - `outputs/` (tables/figures/processed_data)
  - `notes/`
  - `docs/`

### Added compatibility adapter layer
- `thorium_fuel_design/scripts/_adapters.py`
- Multiple script entry points in the requested structure; mapped where legacy implementations exist.

### Added placeholders/templates
- `thorium_fuel_design/scripts/input_generation/templates/*.ser`
- `thorium_fuel_design/scripts/input_generation/placeholders/placeholder_map.yaml`
- `thorium_fuel_design/scripts/utils/config.yaml`

## 4) Risk and Compatibility Notes

- Existing pipelines under `results/` remain intact.
- New framework files are additive and do not remove or rewrite legacy scripts.
- Adapter approach supports gradual refactor to true modular split later.

## 5) Recommended Next Step (Phase-2)

1. Refactor `results/script/extract_data.py` into reusable parser + dedicated extraction modules.
2. Move shared physical constants/logging into `thorium_fuel_design/scripts/utils/`.
3. Incrementally replace adapter forwarding with native modular implementations.
4. Add automated tests after `pytest` is available in environment.
