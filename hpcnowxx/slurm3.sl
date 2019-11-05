#!/bin/bash
##### These lines are for Slurm
#SBATCH -t 5:00
#SBATCH -n 4
#SBATCH -p main
#SBATCH -o output.mpiarray
#SBATCH -J mpiarray

##### These are shell commands
echo -n 'This machine is '; hostname
echo -n 'My jobid is '; echo $SLURM_JOBID
echo 'My path is:' 
echo $PATH
echo ' '
echo 'Compiling...'
ml gompi/2019a
mpicc -w -o mpi_array /data/training/mpi_array.c
echo ' '
echo 'Starting job with the following nodes:'
squeue|grep $SLURM_JOBID
echo ' '
echo '--------------------- Job Output Below ---------------------'
srun -n4 mpi_array
sleep 120
echo ' '
echo 'Done'
