# calc_blanket.py
from math import isclose
NA = 6.02214076e23

rho = 9.3624  # g/cm3, 改成你的材料密度
# composition: (ZAID_str, element_mass_number, weight_percent)
composition = [
    ("90232.09c", 232.03806, 79.0955),   # Th-232
    ("92234.09c", 234.04095, 0.0071),    # U-234
    ("92235.09c", 235.04393, 0.8814),    # U-235
    ("92238.09c", 238.05078, 7.9326),    # U-238
    ("8016.03c",  15.999,  12.0834),     # O-16
]

print("mat blanket  -{:.4f}  tmp 900  burn 1".format(rho))
sum_w = sum(w for _,_,w in composition)
for zaid, A, wt in composition:
    w = wt / 100.0  # fraction
    atoms_cm3 = rho * w / A * NA
    atoms_bcm = atoms_cm3 / 1e24
    print("{:12s}  {: .5E}".format(zaid, atoms_bcm))

# optional print mass fractions (negative values summing to -1)
print("\n# mass-fractions (for mat as weight fractions):")
for zaid, A, wt in composition:
    print("{:12s}  {: .6f}".format(zaid, -wt/100.0))