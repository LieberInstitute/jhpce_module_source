# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/samtools/releases/download/1.17/samtools-1.17.tar.bz2 -O samtools.tar.bz2
tar -xjf samtools.tar.bz2
cd samtools-1.17
./configure prefix=/jhpce/shared/jhpce/libd/samtools/1.17
make
make install

## Ignore all downloaded/installed files
echo "samtools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/samtools/1.17

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV

 

$ date
Wed May 10 10:39:40 EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-107.cm.cluster
```
