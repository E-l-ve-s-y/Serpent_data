# Serpent 使用提示

- 输出文件读取建议使用 `encoding="utf-8", errors="ignore"`。
- 后处理脚本建议从 `results/` 目录运行，保证相对导入与输出路径一致。
- 探测器文件命名可能存在空格或 `copy` 后缀，提取器需要鲁棒匹配。
