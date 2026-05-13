import pandas as pd
import numpy as np

# 读取数据
df = pd.read_csv('C:/Users/lsy05/serpent_data/results/data_processed/data.csv', comment='#')
cases = sorted(df['case'].unique())

results = []
for case in cases:
    case_df = df[df['case'] == case].sort_values('BURN_STEP')
    if len(case_df) == 0:
        continue

    initial = case_df.iloc[0]
    final = case_df.iloc[-1]

    results.append({
        'case': case,
        'group': case[0],
        'Th_level': initial['Th_level'],
        'U235_enr': initial['U235_enrichment'],
        'U233_enr': initial['U233_enrichment'],
        'Pu_level': initial['Pu_level'],
        'keff_init': initial['ANA_KEFF'],
        'keff_final': final['ANA_KEFF'],
        'keff_drop': initial['ANA_KEFF'] - final['ANA_KEFF'],
        'CR_init': initial['conversion_ratio'],
        'CR_final': final['conversion_ratio'],
        'FIR_avg': (initial['conversion_ratio'] + final['conversion_ratio']) / 2,
        'burnup_final': final['burnup_MWd_kgHM'],
        'reactivity_init_pcm': initial['reactivity_pcm'],
        'reactivity_final_pcm': final['reactivity_pcm'],
        'U233_final_gcm3': final['Mdens_U233'] * 1e6 if pd.notna(final['Mdens_U233']) else None,
        'Pu239_final_gcm3': final['Mdens_Pu239'] * 1e6 if pd.notna(final['Mdens_Pu239']) else None,
        'Am241_final_gcm3': final['Mdens_Am241'] * 1e6 if pd.notna(final['Mdens_Am241']) else None,
        'Sm149_final_gcm3': final['Mdens_Sm149'] * 1e6 if pd.notna(final['Mdens_Sm149']) else None,
    })

results_df = pd.DataFrame(results)

# 按组分析
for group in ['A', 'B', 'C', 'D']:
    group_df = results_df[results_df['group'] == group]
    print(f"\n{'='*100}")
    print(f"第{group}组算例汇总 (共{len(group_df)}个)")
    print('='*100)

    for _, row in group_df.iterrows():
        print(f"\n{row['case']}:")
        print(f"  材料配置: Th={row['Th_level']:.2f}, U235={row['U235_enr']:.2%}, U233={row['U233_enr']:.2%}, Pu={row['Pu_level']:.2%}")
        print(f"  keff: 初始={row['keff_init']:.5f}, 末端={row['keff_final']:.5f}, 下降={row['keff_drop']:.5f}")
        print(f"  转换比: 初始CR={row['CR_init']:.4f}, 末端CR={row['CR_final']:.4f}, FIR均值={row['FIR_avg']:.4f}")
        print(f"  反应性: 初始={row['reactivity_init_pcm']:.1f}pcm, 末端={row['reactivity_final_pcm']:.1f}pcm")
        if pd.notna(row['U233_final_gcm3']):
            print(f"  U233密度: {row['U233_final_gcm3']:.2e} g/cm3")
        if pd.notna(row['Pu239_final_gcm3']):
            print(f"  Pu239密度: {row['Pu239_final_gcm3']:.2e} g/cm3")
        if pd.notna(row['Am241_final_gcm3']):
            print(f"  Am241密度: {row['Am241_final_gcm3']:.2e} g/cm3")
        if pd.notna(row['Sm149_final_gcm3']):
            print(f"  Sm149密度: {row['Sm149_final_gcm3']:.2e} g/cm3")

# 输出统计摘要
print("\n" + "="*100)
print("各组统计摘要")
print("="*100)

for group in ['A', 'B', 'C', 'D']:
    g = results_df[results_df['group'] == group]
    print(f"\n{group}组:")
    print(f"  keff初始范围: {g['keff_init'].min():.5f} - {g['keff_init'].max():.5f}")
    print(f"  keff末端范围: {g['keff_final'].min():.5f} - {g['keff_final'].max():.5f}")
    print(f"  FIR范围: {g['FIR_avg'].min():.4f} - {g['FIR_avg'].max():.4f}")
    print(f"  CR初始范围: {g['CR_init'].min():.4f} - {g['CR_init'].max():.4f}")
    print(f"  初始临界裕量: {g['keff_init'].min():.5f} 到 {g['keff_init'].max():.5f}")

# 找出最佳case
print("\n" + "="*100)
print("最佳高转化比算例分析 (FIR > 0.9 且 keff_final > 0.85)")
print("="*100)
best = results_df[(results_df['FIR_avg'] > 0.9) & (results_df['keff_final'] > 0.85)]
print(best.to_string())