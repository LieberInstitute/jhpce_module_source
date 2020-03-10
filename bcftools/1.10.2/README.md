# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/bcftools/releases/download/1.10.2/bcftools-1.10.2.tar.bz2 -O bcftools.tar.bz2 && \
    tar -xjvf bcftools.tar.bz2 && \
    cd bcftools-1.10.2 && \
    ./configure prefix=/jhpce/shared/jhpce/libd/bcftools/1.10.2 && \
    make && \
    make install

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/bcftools/1.10.2
echo "bcftools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore
echo "libexec" >> .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.23.0
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0

$ date
Tue Mar 10 19:18:21 EDT 2020

$ echo "User: ${USER}"
User: bbarry

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-096.cm.cluster
```
