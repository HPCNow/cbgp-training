#!/bin/bash
##### These lines are for Slurm
#SBATCH -t 5:00
#SBATCH -N 1
#SBATCH -p main
#SBATCH -o output.serial
#SBATCH -J serial

##### These are shell commands
echo -n 'This machine is '; hostname
echo -n 'My jobid is '; echo $SLURM_JOBID
echo 'My path is:' 
echo $PATH
echo ' '
echo '--------------------- Job Output Below ---------------------'
echo ' '
/data/training/exercise1
sleep 120
