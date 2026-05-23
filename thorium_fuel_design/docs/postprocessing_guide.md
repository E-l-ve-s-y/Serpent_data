# 后处理流程

```bash
cd /home/runner/work/Serpent_data/Serpent_data/results
python script/extract_data.py --csv
python script/analyze_data.py --csv data_processed/data.csv --output analysis/plots
```

若通过新结构入口调用，请在仓库根目录执行对应适配脚本（内部会转发到 `results/script`）。
