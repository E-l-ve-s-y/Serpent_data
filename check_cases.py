import pandas as pd
df = pd.read_csv('C:/Users/lsy05/serpent_data/results/data_processed/data.csv', comment='#')
print(f"总case数: {df['case'].nunique()}")
print(f"各组case数:")
for g in ['A','B','C','D']:
    cnt = df[df['case'].str.startswith(g)]['case'].nunique()
    print(f"  {g}组: {cnt}个")
print(f"\n总计: {df[df['case'].str.startswith(('A','B','C','D'))]['case'].nunique()}个")