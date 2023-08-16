# Installation

```bash
## Commands used for installing the software

#   This installation mostly follows:
#   https://github.com/BayraktarLab/cell2location#conda-environment-for-a100-gpus,
#   creating a CUDA-aware cell2location installation the authors recommend for
#   A100 GPUs (the GPUs available on the caracol node)

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a conda environment containing cell2location
conda create -y -p $PWD/cell2location_env python=3.9
conda activate $PWD/cell2location_env
pip install scvi-tools cell2location[tutorials]==0.1.3

#   This version of cell2location asks for versions of pyro that in turn
#   require a version of torch (and therefore CUDA) too new for our GPUs.
#   Manually downgrade pyro and re-install a version of PyTorch+CUDA
#   the 'gpu' and 'caracol' queues support
pip install --upgrade pyro-api==0.1.2 pyro-ppl==1.8.1
pip install --upgrade torch==1.11.0+cu113 torchvision==0.12.0+cu113 torchaudio==0.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#   Add some additional packages I commonly use
pip install pyhere openpyxl session_info
conda deactivate

## Ignore all downloaded/installed files
echo "cell2location_env" > .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod -R 775 .
chmod -R 555 cell2location_env

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
Wed Aug 16 11:54:27 EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-065.cm.cluster
```
