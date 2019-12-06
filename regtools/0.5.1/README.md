# Installation

```bash
## Commands used for installing the software
module unload conda_R
wget https://github.com/griffithlab/regtools/archive/0.5.1.tar.gz -O regtools-0.5.1.tar.gz && \
    tar -xvf regtools-0.5.1.tar.gz &&\
    cd regtools-0.5.1 && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/regtools/0.5.1
echo "regtools-0.5.1" > .gitignore

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV  10) git-lfs/2.8.0   13) conda/3-4.6.14
  2) stata/16          5) gcc/4.4.7                       8) git-status-size/github     11) ruby/2.6.4p104
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) git/2.23.0                 12) rmate/1.5.9



$ date
Fri Dec  6 13:19:17 EST 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-110.cm.cluster
```
