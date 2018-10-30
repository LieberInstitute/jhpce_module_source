# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/bcftools/releases/download/1.9/bcftools-1.9.tar.bz2 -O bcftools.tar.bz2 && \
    tar -xjvf bcftools.tar.bz2 && \
    cd bcftools-1.9 && \
    make && \
    make prefix=/jhpce/shared/jhpce/libd/bcftools/1.9 install

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
 module list

Currently Loaded Modules:
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Tue Oct 30 11:50:44 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-062
```
