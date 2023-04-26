#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=6:00:00
#SBATCH --nodes=1


echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python3 cifar.py --num-workers=1 --model=$1 --optimizer=$2 --scheduler=$3