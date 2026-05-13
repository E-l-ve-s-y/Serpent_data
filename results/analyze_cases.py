import pandas as pd
import numpy as np

# 读取数据
df = pd.read_csv('data_processed/data.csv', comment='#')

# 获取所有唯一的case
cases = sorted(df['case'].unique())
print(f"总case数: {df['case'].nunique()}")
print(f"Case列表: {cases}")

# 提取每个case的初始和末端数据
results = []
for case in cases:
    case_df = df[df['case'] == case].sort_values('BURN_STEP')
    if len(case_df) == 0:
        continue

    # 获取初始和末端数据
    initial = case_df.iloc[0]
    final = case_df.iloc[-1]

    # FIR计算 (初始CR)
    initial_cr = initial['conversion_ratio']
    final_cr = final['conversion_ratio']

    results.append({
        'case': case,
        'Th_level': initial['Th_level'],
        'U235_enr': initial['U235_enrichment'],
        'U233_enr': initial['U233_enrichment'],
        'Pu_level': initial['Pu_level'],
        'keff_init': initial['ANA_KEFF'],
        'keff_final': final['ANA_KEFF'],
        'CR_init': initial_cr,
        'CR_final': final_cr,
        'FIR': (initial_cr + final_cr) / 2 if pd.notna(initial_cr) and pd.notna(final_cr) else None,
        'burnup_final': final['burnup_MWd_kgHM'],
        'reactivity_init_pcm': initial['reactivity_pcm'],
        'reactivity_final_pcm': final['reactivity_pcm'],
        'Mdens_U233_init': initial['Mdens_U233'],
        'Mdens_U233_final': final['Mdens_U233'],
        'Mdens_Pu239_final': final['Mdens_Pu239'],
        'Mdens_Am241_final': final['Mdens_Am241'],
        'Mdens_Sm149_final': final['Mdens_Sm149'],
    })

results_df = pd.DataFrame(results)
print("\n" + "="*80)
print("关键指标汇总")
print("="*80)
print(results_df.to_string())