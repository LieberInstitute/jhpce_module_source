# Installation

```bash
## Commands used for installing the software
git clone git@github.com:FelixKrueger/TrimGalore.git

#  Create a python virtual environment with cutadapt installed inside
module load python/3.7.3
mkdir cutadapt-2.10
BASE=$PWD/cutadapt-2.10
virtualenv $BASE/venv
$BASE/venv/bin/pip install -I --prefix=$BASE/bin cutadapt==2.10

## Ignore all downloaded/installed files
echo "TrimGalore" >> .gitignore
echo "cutadapt-2.10" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/trimgalore

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
  2) stata/16          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9         8) python/3.7.3

$ date
Thu May 21 16:51:50 EDT 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-060.cm.cluster
```
