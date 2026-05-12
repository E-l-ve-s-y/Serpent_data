import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import rcParams

# 设置中文字体（如果需要）
rcParams['font.sans-serif'] = ['SimHei']   # Windows
# rcParams['font.sans-serif'] = ['Arial Unicode MS']  # Mac
rcParams['axes.unicode_minus'] = False

# ===================== 常数 =====================
N_A = 6.02214076e23      # Avogadro constant (atoms/mol)
barn_cm = 1e-24          # convert atoms/cm^3 -> atoms/(barn·cm)

# ===================== 几何参数（来自 Table 1） =====================
r_fuel = 0.4095          # cm
H_active = 366.0         # cm
N_rods_per_assembly = 264

V_rod = np.pi * r_fuel**2 * H_active
V_fuel_assembly = N_rods_per_assembly * V_rod   # cm³

# ===================== 材料数据（论文 Section 4 & Table 1） =====================
# 化合物：实际密度（95% TD）, 摩尔质量（g/mol）
compounds = {
    'ThO2':  {'density': 9.50,  'M': 264.04},   # Th=232.04, O=16.00
    'PuO2':  {'density': 10.89, 'M': 271.05},   # 平均 Pu 原子量 239.78
    'UO2':   {'density': 10.45, 'M': 270.04},   # 贫铀（U-235~0.25w/o）平均 U 原子量 238.04
    'UO2_UOX':{'density': 10.45, 'M': 269.93},  # UOX 富集度 4.0% 平均 U 原子量 237.93
}

# 燃料类型：体积分数（v/o）
fuel_compositions = {
    'TOX': {'ThO2': 0.9140, 'PuO2': 0.0860},
    'MOX': {'UO2': 0.9215,  'PuO2': 0.0785},
    'UOX': {'UO2_UOX': 1.0},
}

# Pu 同位素质量分数（表 2）
Pu_mass_frac = {
    'Pu-238': 0.025,
    'Pu-239': 0.541,
    'Pu-240': 0.239,
    'Pu-241': 0.127,
    'Pu-242': 0.069
}
Pu_atomic_mass = {
    'Pu-238': 238.05,
    'Pu-239': 239.05,
    'Pu-240': 240.05,
    'Pu-241': 241.06,
    'Pu-242': 242.06
}

# UOX 中 U-235 质量分数（4.0 w/o）
U235_mass_frac_UOX = 0.04

# 计算 Pu 平均原子量及原子分数
mass_sum = sum(Pu_mass_frac[iso] / Pu_atomic_mass[iso] for iso in Pu_mass_frac)
Pu_atom_frac = {iso: (Pu_mass_frac[iso] / Pu_atomic_mass[iso]) / mass_sum for iso in Pu_mass_frac}
Pu_avg_M = sum(Pu_atom_frac[iso] * Pu_atomic_mass[iso] for iso in Pu_atom_frac)

# 更新 PuO2 的摩尔质量（精确）
compounds['PuO2']['M'] = Pu_avg_M + 32.0   # 更新为精确值

# 计算 UOX 中 U 的平均原子量
U235_M = 235.04
U238_M = 238.05
U_avg_M_UOX = (U235_mass_frac_UOX / U235_M + (1-U235_mass_frac_UOX)/U238_M) ** (-1)  # 调和平均
compounds['UO2_UOX']['M'] = U_avg_M_UOX + 32.0

# ===================== 方法1：体积分数法 =====================
def method_volume_fraction(fuel_name, comp_dict, compounds, V_fuel):
    """
    根据体积分数计算混合密度、总质量、HM原子数密度及核素密度
    返回 DataFrame 包含各核素的原子数密度（atoms/(barn·cm)）
    """
    rho_mix = 0.0
    mass_components = {}
    n_HM_dict = {}       # 每种化合物贡献的 HM 原子数密度
    n_O_from_comp = {}
    
    for comp, vf in comp_dict.items():
        rho_c = compounds[comp]['density']
        M_c = compounds[comp]['M']
        rho_mix += vf * rho_c
        mass_components[comp] = vf * rho_c * V_fuel / 1000.0   # kg
        
        # HM 原子数密度 (atoms/(barn·cm))
        # 先计算 per cm³ 中的原子数密度
        n_HM_per_cm3 = (vf * rho_c * N_A / M_c) * barn_cm
        # 每个化合物分子中含 1 个 HM 原子 (Th, Pu, U)
        n_HM_dict[comp] = n_HM_per_cm3
        # 氧原子来自每个化合物：每个分子 2 个 O
        n_O_from_comp[comp] = 2.0 * n_HM_per_cm3
    
    n_HM_total = sum(n_HM_dict.values())
    n_O_total = sum(n_O_from_comp.values())
    assembly_mass = sum(mass_components.values())
    
    # 计算平均 HM 原子量（用于校核）
    avg_M_HM = sum(n_HM_dict[comp] * (compounds[comp]['M'] - 32.0) for comp in comp_dict) / n_HM_total
    
    # 细分到具体核素
    nuclide_densities = {}
    # Th-232 (仅 TOX)
    if 'ThO2' in comp_dict:
        nuclide_densities['Th-232'] = n_HM_dict['ThO2']   # ThO2 中 Th 自然丰度 100% Th-232
    
    # U-235, U-238 (对于 UO2 或 UO2_UOX)
    if 'UO2' in comp_dict or 'UO2_UOX' in comp_dict:
        comp_U = 'UO2' if 'UO2' in comp_dict else 'UO2_UOX'
        n_U_total = n_HM_dict[comp_U]
        if comp_U == 'UO2':   # MOX 中的贫铀
            U235_mf = 0.0025   # 质量分数 0.25%
            # 计算原子分数
            U235_atom_frac = (U235_mf / U235_M) / (U235_mf/U235_M + (1-U235_mf)/U238_M)
        else:  # UOX
            U235_atom_frac = (U235_mass_frac_UOX / U235_M) / (U235_mass_frac_UOX/U235_M + (1-U235_mass_frac_UOX)/U238_M)
        nuclide_densities['U-235'] = n_U_total * U235_atom_frac
        nuclide_densities['U-238'] = n_U_total * (1 - U235_atom_frac)
    
    # Pu 同位素
    if 'PuO2' in comp_dict:
        n_Pu_total = n_HM_dict['PuO2']
        for iso, af in Pu_atom_frac.items():
            nuclide_densities[iso] = n_Pu_total * af
    
    # 氧（总）
    nuclide_densities['O'] = n_O_total
    
    return {
        'rho_mix_gcm3': rho_mix,
        'assembly_mass_kg': assembly_mass,
        'n_HM_total': n_HM_total,
        'avg_M_HM': avg_M_HM,
        'nuclides': nuclide_densities
    }

# ===================== 方法2：总质量约束法 =====================
def method_total_mass_constraint(assembly_mass, V_fuel, avg_M_HM):
    """
    给定总质量 (kg)、燃料总体积 (cm³) 和平均 HM 原子量 (g/mol)，
    计算 HM 原子数密度 (atoms/(barn·cm))。
    """
    rho_mix = assembly_mass * 1000.0 / V_fuel          # g/cm³
    M_mix = avg_M_HM + 32.0
    n_HM = (rho_mix * N_A / M_mix) * barn_cm
    return n_HM

# ===================== 计算所有燃料（方法1） =====================
results_method1 = {}
for fuel, comp in fuel_compositions.items():
    res = method_volume_fraction(fuel, comp, compounds, V_fuel_assembly)
    results_method1[fuel] = res

# ===================== 方法2：使用方法1算出的总质量和平均原子量 =====================
results_method2 = {}
for fuel, res1 in results_method1.items():
    n_HM_method2 = method_total_mass_constraint(res1['assembly_mass_kg'], V_fuel_assembly, res1['avg_M_HM'])
    results_method2[fuel] = n_HM_method2

# ===================== 可视化 =====================
# 1. 两种方法计算的 HM 原子数密度对比（散点图+1:1线）
fuels = list(results_method1.keys())
n_HM_method1 = [results_method1[f]['n_HM_total'] for f in fuels]
n_HM_method2 = [results_method2[f] for f in fuels]

fig, ax = plt.subplots(figsize=(6,6))
ax.scatter(n_HM_method1, n_HM_method2, s=80, c='red', edgecolors='k')
ax.plot([0.021, 0.024], [0.021, 0.024], 'k--', label='1:1 线')
for i, f in enumerate(fuels):
    ax.annotate(f, (n_HM_method1[i], n_HM_method2[i]), xytext=(5,5), textcoords='offset points')
ax.set_xlabel('体积分数法 n_HM (atoms/(barn·cm))')
ax.set_ylabel('总质量约束法 n_HM (atoms/(barn·cm))')
ax.set_title('两种方法计算的重金属原子数密度对比')
ax.grid(True)
ax.legend()
plt.tight_layout()
plt.savefig('HM_density_comparison.png', dpi=150)
# plt.show()

# 2. 各燃料主要核素原子数密度条形图（方法1结果）
nuclides_of_interest = ['Th-232', 'Pu-239', 'Pu-240', 'Pu-241', 'U-235', 'U-238', 'O']
# 提取数据
data = []
for fuel in fuels:
    nd = results_method1[fuel]['nuclides']
    row = {'燃料': fuel}
    for nuc in nuclides_of_interest:
        row[nuc] = nd.get(nuc, 0.0)
    data.append(row)
df = pd.DataFrame(data).set_index('燃料')

fig2, ax2 = plt.subplots(figsize=(10,6))
df[['Th-232','Pu-239','Pu-240','Pu-241','U-235','U-238']].plot(kind='bar', ax=ax2, rot=0)
ax2.set_ylabel('原子数密度 (atoms/(barn·cm))')
ax2.set_title('不同燃料中主要重金属核素的原子数密度')
ax2.set_yscale('log')  # 因为 U-235 在 MOX 中很小，对数坐标更清晰
ax2.legend(loc='upper right')
ax2.grid(axis='y', linestyle='--', alpha=0.7)
plt.tight_layout()
plt.savefig('nuclide_densities.png', dpi=150)

# 3. 展示计算结果表格
print("\n========== 计算结果汇总 ==========")
print(f"燃料总体积 (V_fuel_assembly) = {V_fuel_assembly:.1f} cm³")
print("\n燃料类型 | 混合密度(g/cm³) | 组件总质量(kg) | 总HM原子数密度(/barn·cm) | 平均HM原子量(g/mol)")
print("-"*90)
for fuel in fuels:
    r = results_method1[fuel]
    print(f"{fuel:6s} | {r['rho_mix_gcm3']:9.4f} | {r['assembly_mass_kg']:13.2f} | {r['n_HM_total']:20.4e} | {r['avg_M_HM']:13.2f}")

print("\n各燃料核素原子数密度 (atoms/(barn·cm)):")
print(df.round(6))