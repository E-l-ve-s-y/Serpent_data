# thorium_fuel_design

This directory mirrors the requested project framework and currently bridges to legacy scripts under `results/script`.

## Current migration mode

- Keep `results/` as runtime source of truth.
- Add target framework-compatible script entry points under `thorium_fuel_design/scripts/`.
- Use adapters where legacy functionality already exists.
- Keep unimplemented modules scaffolded with explicit TODO recommendations.
