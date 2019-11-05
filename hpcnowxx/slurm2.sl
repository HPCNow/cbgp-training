#!/bin/bash
##### These lines are for Slurm
#SBATCH -t 5:00
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -p main
#SBATCH -o output.omp
#SBATCH -J omp

##### These are shell commands
echo -n 'This machine is '; hostname
echo -n 'My jobid is '; echo $SLURM_JOBID
echo 'My path is:' 
echo $PATH
echo ' '
echo 'Compiling...'
ml GCC/8.2.0-2.31.1
export OMP_NUM_THREADS=4
gcc -o omp_hello -fopenmp /data/training/omp_hello.c
echo ' '
echo 'Starting job with the following nodes:'
squeue|grep $SLURM_JOBID
echo ' '
echo '--------------------- Job Output Below ---------------------'
./omp_hello
sleep 30
echo ' '
echo 'Done'
