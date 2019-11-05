#!/bin/bash
#SBATCH -J array
#SBATCH --time=00:10:00      # Walltime
#SBATCH --mem-per-cpu=1G     # memory/cpu
#SBATCH -a 1-10              # array of 10 jobs
#SBATCH -n 1                 # 1 core means serial
#SBATCH -p main              # Partition

srun echo "hello from SLURM_ARRAY_TASK_ID : $SLURM_ARRAY_TASK_ID"

srun sleep 10
