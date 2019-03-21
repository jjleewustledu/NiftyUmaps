#! /bin/bash

# resources #################################



# commands for nodes ########################

# manually, from login node:
# singularity pull docker://jjleewustledu/niftyumaps-image:construct_umaps

unset CONDA_DEFAULT_ENV
#DT=$(date +"%Y%m%d%H%M%S")
module unload singularity-20181030
module load singularity-3.0.2

singularity shell \
    --bind $SINGULARITY_HOME:/SubjectsDir \
    --bind /export:/export \
    $SINGULARITY_HOME/niftyumaps-image_construct_umaps.sif 


