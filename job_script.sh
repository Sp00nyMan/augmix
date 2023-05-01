#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --time=5:00:00
#SBATCH --nodes=1


module load python
pip install --user -r requirements.txt
pip freeze
echo "-----------------------------------------------------------------------------------------"

echo "Job ID: " $SLURM_JOB_ID
echo "Job Name: " $SLURM_JOB_NAME

python cifar.py --num-workers=1 --model=$1 --optimizer=$2 --scheduler=$3