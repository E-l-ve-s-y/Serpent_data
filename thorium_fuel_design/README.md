# thorium_fuel_design

本目录已基于仓库现有内容完成第一轮填充，遵循你给出的目标结构。

## 已填充的数据基础

- 原始案例：`results/data_raw/`（A001-D027）
- 主数据表：`results/data_processed/data.csv`
- 能谱汇总：`results/data_processed/detector_spectra.csv`
- 分析产物：`results/analysis/`

## 当前状态

1. `00_reference/UO2_5pct` 已填入真实映射案例（A003）和提取结果。
2. `01_homogeneous` 已记录现有均匀扫描范围。
3. `02_heterogeneous`、`03_denatured` 已填入参数矩阵模板并标注待补算。
4. `04_best_candidates/comparison` 已生成 A004/A009 对比表。
5. `05_multi_scale` 已建立组件/堆芯占位对比文档。

## 运行约束

现有可执行逻辑仍在 `results/script/`，并通过 `thorium_fuel_design/scripts/` 适配入口调用。
