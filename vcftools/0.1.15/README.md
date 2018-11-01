# Installation

```bash
## Commands used for installing the software
wget https://github.com/vcftools/vcftools/releases/download/v0.1.15/vcftools-0.1.15.tar.gz && \
    tar -zxvf vcftools-0.1.15.tar.gz && \
    cd vcftools-0.1.15 && \
    ./configure && \
    make && \
    make prefix=/jhpce/shared/jhpce/libd/vcftools/0.1.15 install

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/vcftools/0.1.15
echo "vcftools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore
echo "jhpce" >> .gitignore

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
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Thu Nov  1 10:16:09 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-108
```
