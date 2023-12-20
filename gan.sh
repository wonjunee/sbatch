#!/bin/zsh -l
#SBATCH --time=20:00:00
#SBATCH --mem=48gb
#SBATCH -N 1                     # number of nodes
#SBATCH -n 1                     # number of tasks across all nodes
#SBATCH --gres=gpu:v100:2
#SBATCH -p v100
#SBATCH -o ./outfiles/%j.out
#SBATCH --mail-type=begin        # send email when job begins
#SBATCH --mail-type=end          # send email when job ends
#SBATCH --mail-user=lee01273@umn.edu
module load python3/3.9.3_anaconda2021.11_mamba

cd /home/lermang/lee01273/research/GMEGAN/
python3 cifar-test.py --plot_every=1 --batch_size=64 --starting_epoch=0 --saving=2