#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --partition=test
#SBATCH --account=project_2001659

export TMPDIR=$PWD
export CONDA_ENV=bioconda
singularity run --no-home --overlay my_overlay condaM.sif conda list

export CONDA_ENV=docs
singularity run --no-home --overlay docs_overlay condaM.sif conda list
