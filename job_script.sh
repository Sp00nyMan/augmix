#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=6:00:00
#SBATCH --nodes=1

module load miniconda3
conda create --name torch
conda activate torch
conda install --yes pytorch=2.0.0 torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia

echo "-----------------------------------------------------------------------------------------"

echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python cifar.py --num-workers=1 --model=$1 --optimizer=$2 --scheduler=$3