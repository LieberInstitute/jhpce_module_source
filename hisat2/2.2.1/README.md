# Installation

```bash
## Commands used for installing the software

#  Build from source
wget https://github.com/DaehwanKimLab/hisat2/archive/v2.2.1.tar.gz
tar -xzf v2.2.1.tar.gz
cd hisat2-2.2.1
make
cd ..
rm v2.2.1.tar.gz

## Ignore all downloaded/installed files
echo "hisat2-2.2.1/*" >> .gitignore

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
  4) sge/8.1.9         8) conda/3-4.6.14

$ date
Mon Aug 24 15:42:52 EDT 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-116.cm.cluster
```
