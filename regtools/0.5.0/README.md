# Installation

```bash
## Commands used for installing the software
git clone https://github.com/griffithlab/regtools && \
    cd regtools && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make
cd /jhpce/shared/jhpce/libd/regtools/0.5.0
echo "regtools" > .gitignore
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
Mon Oct 29 14:23:01 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-075
```
