#!/bin/bash
#SBATCH -J ref_UO2_5pct
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 08:00:00
#SBATCH -o ref_UO2_5pct.out

# module load serpent
# serpent2 /home/runner/work/Serpent_data/Serpent_data/results/data_raw/A003/A003.sss
