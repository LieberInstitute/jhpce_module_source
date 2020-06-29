# Installation

```bash
## Commands used for installing the software
wget https://github.com/COMBINE-lab/salmon/releases/download/v1.2.1/Salmon-1.2.1_linux_x86_64.tar.gz
tar xzvf Salmon-1.2.1_*.tar.gz
rm Salmon-1.2.1_*.tar.gz
chmod -R 775 salmon-*

## Ignore all downloaded/installed files
echo "salmon-latest_linux_x86_64/*" >> .gitignore

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
  1) matlab/R2019a     6) COMMUNITY_CENTOS7_DEFAULT_ENV
  2) stata/16          7) JHPCE_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   8) conda/3-4.6.14
  4) sge/8.1.9         9) conda_R/4.0
  5) gcc/4.4.7

$ date
Mon Jun 29 13:43:05 EDT 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-075.cm.cluster
```
