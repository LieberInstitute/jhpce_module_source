# Installation

```bash
## Commands used for installing the software
wget https://github.com/FelixKrueger/Bismark/archive/refs/tags/0.23.0.tar.gz
tar -xzf 0.23.0.tar.gz

## Ignore all downloaded/installed files
echo "0.23.0.tar.gz" >> .gitignore
echo "Bismark*" >> .gitignore

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
  4) sge/8.1.9

$ date
Thu Apr 15 13:32:11 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-108.cm.cluster
```
