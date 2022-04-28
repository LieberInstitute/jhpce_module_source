# Installation

```bash
## Commands used for installing the software

#   This installation follows:
#   https://github.com/BayraktarLab/cell2location#conda-environment-for-a100-gpus,
#   creating a CUDA-aware cell2location installation the authors recommend for
#   A100 GPUs (the GPUs available on the caracol node). The following commands
#   were executed on the caracol node.

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a conda environment containing cell2location
conda create -y -p $PWD/cell2location_env python=3.9
conda activate $PWD/cell2location_env
conda install -y -c anaconda hdf5 pytables git
pip install scvi-tools
pip install git+https://github.com/BayraktarLab/cell2location.git#egg=cell2location[tutorials]
pip3 install torch==1.11.0+cu113 torchvision==0.12.0+cu113 torchaudio==0.11.0 -f https://download.pytorch.org/whl/torch_stable.html
conda deactivate

## Ignore all downloaded/installed files
echo "cell2location_env" >> .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod -R 775 /jhpce/shared/jhpce/libd/cell2location
chmod -R 755 /jhpce/shared/jhpce/libd/cell2location/0.8a0/cell2location_env

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
Thu Apr 28 15:22:41 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
