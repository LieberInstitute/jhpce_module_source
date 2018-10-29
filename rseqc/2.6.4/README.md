# Installation

```bash
## Commands used for installing the software
module load python/2.7.9
wget https://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz
tar zxf RSeQC-2.6.4.tar.gz
cd RSeQC-2.6.4
python setup.py install --root=bin
cd /jhpce/shared/jhpce/libd/rseqc/2.6.4

## Ignore all downloaded/installed files
echo "RSeQC-2.6.4*" > .gitignore

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
  1) JHPCE_DEFAULT_ENV   5) COMMUNITY_DEFAULT_ENV   9) git/2.17.0
  2) matlab/R2017b       6) sge/2011.11p1          10) python/2.7.9
  3) stata/15            7) conda_R/3.5
  4) JHPCE_tools/1.0     8) gcc/4.4.7



$ date
Mon Oct 29 15:09:20 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-050
```
