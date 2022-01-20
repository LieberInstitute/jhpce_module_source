# Installation

```bash
## Commands used for installing the software
wget https://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_20211217.zip
unzip plink2_linux_x86_64_20211217.zip

## Ignore all downloaded/installed files
echo "plink2*" > .gitignore

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV



$ date
Thu Jan 20 11:30:05 EST 2022
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-124.cm.cluster
```
