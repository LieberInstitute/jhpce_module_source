# Installation

```bash
## Commands used for installing the software
wget https://github.com/griffithlab/regtools/archive/0.3.0.tar.gz -O regtools-0.3.0.tar.gz && \
    tar -xvf regtools-0.3.0.tar.gz &&\
    cd regtools-0.3.0 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/regtools/0.3.0
echo "regtools*" > .gitignore

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
$ module list

Currently Loaded Modules:
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Tue Oct 30 12:02:49 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-062
```
