# Installation

```bash
#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

## Commands used for installing the software

#  Download tensorQTL 1.0.8 repo to get their requirements.txt suggestion
wget https://github.com/broadinstitute/tensorqtl/archive/refs/tags/v1.0.8.tar.gz
tar -xzf v1.0.8.tar.gz
rm v1.0.8.tar.gz

#  Build a conda environment with python, and R (needed for integration with
#  rpy2)
source /jhpce/shared/jhpce/core/conda/miniconda3-23.3.1/etc/profile.d/conda.sh
conda create -y -p $PWD/tensorqtl_env -c conda-forge mamba
conda activate $PWD/tensorqtl_env
mamba install -y -c anaconda python==3.8.5
mamba install -y -c conda-forge r-base==4.2.0

#  Install their recommended python dependencies, a version of PyTorch
#  compatible with our CUDA/ GPU hardware, and the tensorQTL package itself
pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
pip install -r tensorqtl-1.0.8/install/requirements.txt

pip install tensorqtl==1.0.8

conda deactivate

## Ignore all downloaded/installed files
echo "tensorqtl*" > .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod -R 775 .
chmod -R 555 tensorqtl_env

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
echo "Node name: ${SLURMD_NODENAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7                       8) conda/3-4.11.0
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) conda_R/4.3



$ date
Fri Jun 16 11:44:40 EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
