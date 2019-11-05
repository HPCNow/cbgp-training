#!/bin/bash
#SBATCH -J gpu
#SBATCH -p main           # Partition
#SBATCH -o output.gpu
#SBATCH --time=00:01:00   # Walltime
#SBATCH --mem-per-cpu=1G  # memory/cpu
#SBATCH --gres=gpu:1

nvidia-smi
