#!/bin/bash -l
#SBATCH --job-name=AMBER_min
#SBATCH --partition=gorn
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --output=AMBER.o%j
#SBATCH --error=AMBER.e%j
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=usuario@klingon.uab.cat

### MODULES ###
module load gcc/4.8.5/cuda/8.0/amber/16

### ENVIRONMENT ###
. /QFcomm/environment.bash

### EXECUTION ###
pmemd.cuda -O -i input.in -o output.out -p topology.prmtop -c coordinates.incrd -ref coordinates.inpcrd -r restart.rst -inf information.mdinfo -x dynamics.nc

### RESULTS ###
cp -rp $SWAP_DIR $SLURM_SUBMIT_DIR/$SLURM_JOB_ID

