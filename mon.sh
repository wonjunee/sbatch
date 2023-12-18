#!/bin/zsh -l
#SBATCH --time=20:00:00
#SBATCH -N 1                     # number of nodes
#SBATCH -n 32                     # number of tasks across all nodes
#SBATCH --cpus-per-task=1
#SBATCH -o ./outfiles/%j.out
#SBATCH --mail-type=begin        # send email when job begins
#SBATCH --mail-type=end          # send email when job ends
#SBATCH --mail-user=lee01273@umn.edu
module load gcc/9.2.0  
module load python3/3.8.3_anaconda2020.07_mamba
cd /home/lermang/lee01273/research/monotone-scheme/
python3 run-3d.py