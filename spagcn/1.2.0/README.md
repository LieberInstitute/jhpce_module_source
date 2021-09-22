# Installation

```bash
## Commands used for installing the software

#  Create and enter a python virtual environment
module load python/3.7.3
python3 -m venv ./spagcn_venv
source spagcn_venv/bin/activate

#  Install SpaGCN and a recommended dependency, using the latest pip
python -m pip install --upgrade pip
python -m pip install SpaGCN # at the time, version 1.2.0
python -m pip install opencv-python

#  Exit virtual environment
deactivate

## Ignore all downloaded/installed files
echo "spagcn_venv" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/spagcn

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
  1) matlab/R2019a     5) gcc/4.4.7
  2) stata/17          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9         8) python/3.7.3
  
$ date
Wed Sep 22 15:16:55 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-107.cm.cluster
```
