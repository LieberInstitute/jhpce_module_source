# Installation

```bash
## Commands used for installing the software

#  Create a python virtual environment with vampire 3.4.4 installed inside
module load python/3.6.9
mkdir vampire
BASE=$PWD/vampire
virtualenv $BASE/venv
$BASE/venv/bin/pip install --prefix=$BASE/bin vampireanalysis==3.4.4

## Ignore all downloaded/installed files
echo "vampire" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/vampire

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
  4) sge/8.1.9         8) python/3.6.9



$ date
Tue Jul 27 16:33:55 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-120.cm.cluster
```
