import sys
sys.path.insert(0, '.')
from analyze_pin_cell import load_pin_case
from pathlib import Path
import numpy as np

blanket_dir = Path(r'C:\Users\lsy05\serpent_data\pin_cell\blanket')
seed_dir = Path(r'C:\Users\lsy05\serpent_data\pin_cell\seed')
df_b = load_pin_case(blanket_dir, 'pin_cell')
df_s = load_pin_case(seed_dir, 'pin_cell2')

target_b = 80.0
target_s = 155.0

# Find closest burnup step
idx_b = np.argmin(np.abs(df_b['burnup_MWd_kgHM'].values - target_b))
idx_s = np.argmin(np.abs(df_s['burnup_MWd_kgHM'].values - target_s))

print(f'Blanket target: {target_b}, closest: {df_b["burnup_MWd_kgHM"].values[idx_b]}, idx: {idx_b}')
print(f'Seed target: {target_s}, closest: {df_s["burnup_MWd_kgHM"].values[idx_s]}, idx: {idx_s}')
print()
print('Blanket Adens columns:', [c for c in df_b.columns if c.startswith('Adens_')])
print()
print('Seed Adens columns:', [c for c in df_s.columns if c.startswith('Adens_')])

# Show data at target burnup
print('\n--- Blanket at idx', idx_b, '---')
row_b = df_b.iloc[idx_b]
for col in df_b.columns:
    if col.startswith('Adens_') and pd.notna(row_b[col]) and row_b[col] > 0:
        print(f'{col}: {row_b[col]}')

print('\n--- Seed at idx', idx_s, '---')
row_s = df_s.iloc[idx_s]
for col in df_s.columns:
    if col.startswith('Adens_') and pd.notna(row_s[col]) and row_s[col] > 0:
        print(f'{col}: {row_s[col]}')