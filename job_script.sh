#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --mem=10000

module load miniconda3
source ~/.bashrc
conda deactivate
conda activate torch

echo "-----------------------------------------------------------------------------------------"

echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python cifar.py --num-workers=0 --model=$1 --optimizer=$2 --scheduler=$3 --resume=$4 --evaluate --eval-batch-size=16