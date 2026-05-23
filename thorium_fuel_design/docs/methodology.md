# 方法论（当前仓库版本）

1. 使用 `results/data_raw/` 中 SERPENT 输出作为唯一输入源。
2. 通过 `results/script/extract_data.py` 统一提取 keff、CR、核素与探测器能谱。
3. 通过 `results/script/analyze_data.py` 与相关绘图脚本生成分组分析。
4. 在 `thorium_fuel_design/` 下按设计阶段组织结果，避免影响原有流水线。
