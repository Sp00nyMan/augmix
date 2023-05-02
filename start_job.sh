#!/bin/bash
sbatch --output=log_resnet_SGD.txt job_script.sh resnet18 SGD exp ./snapshots/model_best_resnet18_SGD.pth.tar
sbatch --output=log_resnet_AdamW.txt job_script.sh resnet18 AdamW cosine ./snapshots/model_best_resnet18_SGD.pth.tar
sbatch --output=log_convnext_SGD.txt job_script.sh convnext SGD exp ./snapshots/model_best_convnext_SGD.pth.tar