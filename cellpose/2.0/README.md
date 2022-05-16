# Installation

```bash
## Commands used for installing the software

#   On the caracol GPU node

#  Clone the repo
git clone git@github.com:MouseLand/cellpose.git

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#  Create a conda environment as specified in the repo. Make sure pytorch is
#   CUDA-aware for the version of CUDA on the caracol node (11.3)
conda env create -f cellpose/environment.yml -p $PWD/cellpose_env
conda activate $PWD/cellpose_env
pip3 install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
conda deactivate

## Ignore all downloaded/installed files
echo "cellpose" > .gitignore
echo "cellpose_env" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/cellpose

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 755 /jhpce/shared/jhpce/libd/cellpose/2.0/cellpose_env

## Version control files
git add .gitignore
git add README.md
```

# Reproducibility

```bash
## Evaluate the following commands
module list
date
echo "User: ${USER}"
echo "Hostname: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV
  
$ date
Thu May  5 15:42:09 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
