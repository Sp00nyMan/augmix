#!/bin/bash
sbatch --output=log_resnet.out job_script.sh resnet18
sbatch --output=log_convnext.out job_script.sh convnext