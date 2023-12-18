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
python3 cifar-test.py --plot_every=200 --batch_size=64 --starting_epoch=0
# python gaussian-comparison.py --modes=5 --num_iter=50000mkdir
# python plot_epochs.py

## OTM
# cd /home/lermang/lee01273/research/OptimalTransportModeling/source
# python3 otm_mnist_32x32.py --train 1 --total_epoch 50000 # --restore 1 --init_iter 15000
# python3 otm_cifar_32x32.py #--train 1 --total_epoch 50000 # --restore 1 --init_iter 15000