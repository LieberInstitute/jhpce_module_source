# Installation

```bash
## Commands used for installing the software
#Retrieve Linux binary from https://cloud.biohpc.swmed.edu/index.php/s/hisat2-220-Linux_x86_64/download
unzip hisat2-2.2.0-Linux_x86_64.zip
chmod -R 755 hisat2-2.2.0

## Ignore all downloaded/installed files
echo "hisat2-2.2.0*" > .gitignore

## Version control files
git add .gitignore
git add README.md

## Load python 3 and convert all python 2-compatible scripts to python 3 compatibility
#Note, the original scripts will be kept as backups, ending in `.bak`
module load python/3.7.3

2to3 -w hisat2-2.2.0/
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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.23.0     11) python/3.7.3
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0

$ date
Fri Mar 27 16:38:30 EDT 2020

$ echo "User: ${USER}"
User: bbarry

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-095.cm.cluster

```
