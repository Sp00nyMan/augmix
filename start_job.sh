#!/bin/bash
# sbatch --output=log_resnet_SGD.txt job_script.sh resnet18 SGD exp
# sbatch --output=log_resnet_AdamW.txt job_script.sh resnet18 AdamW cosine
# sbatch --output=log_convnext_SGD.txt job_script.sh convnext SGD exp
sbatch --output=log_convnext_AdamW.txt job_script.sh convnext AdamW cosine