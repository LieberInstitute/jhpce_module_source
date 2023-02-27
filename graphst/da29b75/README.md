# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a small environment including mamba, which is much faster than conda
conda create -y -n mamba_env -c conda-forge mamba
conda activate mamba_env

#   Neither installation method recommended at
#   https://deepst-tutorials.readthedocs.io/en/latest/Installation.html worked,
#   nor did creating a conda environment from environment.yml. Creating a conda
#   environment with just python 3.8 and installing python packages from
#   requirement.txt also did not work. Here is the manual workaround that seems
#   to function correctly (including GPU support), after trial and error:
mamba create -y -p $PWD/graphst_env python=3.8
conda activate $PWD/graphst_env

#   Pytorch for CUDA 11.3, supported at caracol
pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#   GraphST and additional dependencies
pip install GraphST
pip install numpy pandas scikit-learn scanpy pot

conda deactivate

## Ignore all downloaded/installed files
echo "graphst_env" > .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/graphst

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 755 /jhpce/shared/jhpce/libd/graphst/da29b75/graphst_env

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV
  
$ date
Mon Feb 27 14:52:10 EST 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
