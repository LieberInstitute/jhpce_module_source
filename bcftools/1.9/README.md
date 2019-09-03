# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/bcftools/releases/download/1.9/bcftools-1.9.tar.bz2 -O bcftools.tar.bz2 && \
    tar -xjvf bcftools.tar.bz2 && \
    cd bcftools-1.9 && \
    ./configure prefix=/jhpce/shared/jhpce/libd/bcftools/1.9 && \
    make && \
    make install

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/bcftools/1.9
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
  1) matlab/R2019a   2) stata/16   3) JHPCE_tools/1.0   4) sge/8.1.9   5) gcc/4.4.7   6) COMMUNITY_CENTOS7_DEFAULT_ENV   7) JHPCE_CENTOS7_DEFAULT_ENV   8) git/2.17.0   9) git-status-size/github  10) ruby/2.6.4p104  11) rmate/1.5.9  12) samtools/1.3.1  13) bcftools/1.9



$ date
Tue Sep  3 14:47:25 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-067.cm.cluster
```
