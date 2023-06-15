#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=48
#SBATCH --partition=short
#SBATCH --job-name=mtp-l20
#SBATCH --mem=64GB

export OMP_NUM_THREADS=1
mpirun -np 48 mlp train 20.mtp ../training-data/training.cfg --trained-pot-name=pot.mtp
