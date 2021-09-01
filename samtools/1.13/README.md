# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/samtools/releases/download/1.13/samtools-1.13.tar.bz2 -O samtools.tar.bz2 && \
    tar -xjvf samtools.tar.bz2 && \
    cd samtools-1.13 && \
    ./configure prefix=/jhpce/shared/jhpce/libd/samtools/1.13 && \
    make && \
    make install

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/samtools/1.13
echo "samtools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore

## Set permissions
chmod -R 775 .

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
  1) matlab/R2021a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.28.0     11) ruby/2.6.4p104  13) conda/3-4.6.14  15) bamtofastq/1.3.2
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0  12) rmate/1.5.9     14) conda_R/4.1



$ date
Wed Sep  1 16:34:05 EDT 2021
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-121.cm.cluster
```
