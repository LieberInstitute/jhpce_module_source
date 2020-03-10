# Installation

```bash
## Commands used for installing the software
module unload conda_R/3.6
module unload conda

wget https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2 -O htslib-1.10.2.tar.bz2 && \
    tar -xjvf htslib-1.10.2.tar.bz2 && \
    cd htslib-1.10.2 && \
    ./configure prefix=/jhpce/shared/jhpce/libd/htslib/1.10.2 && \
    make && \
    make install

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/htslib/1.10.2
echo "htslib*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore
echo "lib" >> .gitignore
echo "include" >> .gitignore

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
Tue Mar 10 19:46:19 EDT 2020

$ echo "User: ${USER}"
User: bbarry

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-096.cm.cluster
```
