# Installation

```bash
## Commands used for installing the software
git clone https://github.com/shz9/ldsc.git

## Ignore all downloaded/installed files
echo "ldsc*" >> .gitignore

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
Thu Mar 12 14:34:13 EDT 2020

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-109.cm.cluster
```
