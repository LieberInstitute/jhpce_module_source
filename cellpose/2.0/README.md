# Installation

```bash
## Commands used for installing the software

#   On the caracol GPU node

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a conda environment similar to the one provided in the cellpose repo.
#   Make sure pytorch is CUDA-aware for the version of CUDA on the caracol node
#   (11.3)
conda create -y -p $PWD/cellpose_env python=3.8
conda activate $PWD/cellpose_env
pip install cellpose 'cellpose[gui]'
pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#   Install more packages we'll need for cellpose-related analysis
pip install seaborn matplotlib scikit-image pyhere scikit-learn pyyaml pandas openpyxl graphviz

#   More dependencies seemed to be necessary to install to enable the Qt-based
#   GUI and plotting
conda install -y cairo
conda install -y -c conda-forge xorg-libxcb
conda install -y -c conda-forge xorg-xcb-proto
conda install -y -c conda-forge xcb-util
conda install -y -c conda-forge xcb-util-wm
conda install -y -c conda-forge xcb-util-keysyms
conda install -y -c conda-forge xcb-util-renderutil-cos7-x86_64
conda install -y -c conda-forge xcb-util-image-cos7-x86_64
conda deactivate

## Ignore all downloaded/installed files
echo "cellpose_env" > .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV
  
$ date
Tue May 24 11:36:48 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
