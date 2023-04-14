#!/bin/bash
rm log.out
sbatch job_script.sh
tail -f log.out