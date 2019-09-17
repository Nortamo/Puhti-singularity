#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --partition=test
#SBATCH --account=project_2001659

export TMPDIR=$PWD
singularity run --no-home --overlay my_overlay condaM.sif mount
singularity run --no-home --overlay my_overlay condaM.sif conda env create --name bioconda --force -f bio.yaml
