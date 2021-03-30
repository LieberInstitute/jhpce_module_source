# Installation

```bash
## Commands used for installing the software
wget https://github.com/FelixKrueger/TrimGalore/archive/refs/tags/0.6.6.tar.gz
tar -xzf 0.6.6.tar.gz

#  Create a python virtual environment with cutadapt 3.4 installed inside
module load python/3.7.3
mkdir cutadapt
BASE=$PWD/cutadapt
virtualenv $BASE/venv
$BASE/venv/bin/pip install -I --prefix=$BASE/bin cutadapt

## Ignore all downloaded/installed files
echo "TrimGalore-0.6.6" >> .gitignore
echo "cutadapt" >> .gitignore
echo "0.6.6.tar.gz" >> .gitignore

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
Tue Mar 30 13:56:08 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-075.cm.cluster
```
