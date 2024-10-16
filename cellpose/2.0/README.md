# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a conda environment similar to the one provided in the cellpose repo.
#   Make sure pytorch is CUDA-aware for the version of CUDA on the caracol node
#   (11.3)
module load conda/3-24.3.0
conda create -y -p $PWD/cellpose_env python==3.8
conda activate $PWD/cellpose_env
pip install cellpose==2.0 'cellpose[gui]'==2.0
pip install --upgrade torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#   Install more packages we'll need for cellpose-related analysis
pip install seaborn matplotlib scikit-image pyhere scikit-learn==1.1.1 pyyaml pandas openpyxl graphviz session_info

#   More dependencies seemed to be necessary to install to enable the Qt-based
#   GUI and plotting
conda install -y cairo
conda install -y -c conda-forge xorg-libxcb xorg-xcb-proto xcb-util xcb-util-wm xcb-util-keysyms xcb-util-renderutil-cos7-x86_64 xcb-util-image-cos7-x86_64
conda deactivate

## Ignore all downloaded/installed files
echo "cellpose_env" > .gitignore

chmod 775 README.md .gitignore .

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 555 cellpose_env

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
echo "Node name: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Thu Oct 10 12:08:59 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${HOSTNAME}"
Node name: compute-168.cm.cluster
```
