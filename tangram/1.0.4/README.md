# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

wget https://github.com/broadinstitute/Tangram/archive/refs/tags/1.0.4.tar.gz
tar -xzf 1.0.4.tar.gz
rm 1.0.4.tar.gz

#  Create a conda environment similar to that specified in the repo (the exact
#  version had system conflicts)
source /jhpce/shared/jhpce/core/conda/miniconda3-23.3.1/etc/profile.d/conda.sh
conda create -y -p $PWD/tangram_env python==3.8.5

#  Manually install tangram and some additional python packages that we'll need
conda activate $PWD/tangram_env
pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
pip install tangram-sc==1.0.4
pip install squidpy==1.1.0
pip install xlrd scipy seaborn scikit-learn scanpy pandas tqdm pyhere session_info openpyxl
conda deactivate

## Ignore all downloaded/installed files
echo "Tangram-1.0.4" > .gitignore
echo "tangram_env" >> .gitignore

chmod -R 775 .

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 555 tangram_env

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
  1) JHPCE_tools/3.0

 

$ date
Thu Aug 31 11:55:08 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-111
```
