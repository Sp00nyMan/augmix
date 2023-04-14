#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=0:30:00
#SBATCH --nodes=1
#SBATCH --output=log.out


echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python3 -m pip install torch torchvision
python3 cifar.py