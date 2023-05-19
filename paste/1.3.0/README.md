# Installation

```bash
## Commands used for installing the software

#   Installed on caracol, the GPU node

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

module load python/3.8.3
python -m venv ./paste_venv
source ./paste_venv/bin/activate

#  Upgrade pip and install CUDA-aware pytorch
python -m pip install --upgrade pip
python -m pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

wget https://github.com/raphael-group/paste/archive/refs/tags/v1.3.0.tar.gz
tar -xzf v1.3.0.tar.gz
python -m pip install -r paste-1.3.0/requirements.txt
python -m pip install paste-bio

## Ignore all downloaded/installed files
echo paste* > .gitignore
echo v1.3.0.tar.gz >> .gitignore

# Set permissions (protect against accidental changes to virtual env)
chmod -R 775 /jhpce/shared/jhpce/libd/paste
chmod -R 555 /jhpce/shared/jhpce/libd/paste/1.3.0/paste_venv

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
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) python/3.8.3

$ date
Fri May 19 09:42:42 EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
