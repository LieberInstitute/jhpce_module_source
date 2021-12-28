# Installation

```bash
## Commands used for installing the software
module unload conda_R
wget https://github.com/gpertea/regtools/archive/refs/tags/0.5.33g.tar.gz
tar -xf 0.5.33g.tar.gz
cd regtools-0.5.33g
mkdir build
cd build
cmake ..
make
cd ../..

## Ignore all downloaded/installed files
echo "regtools-0.5.33g" > .gitignore
echo "0.5.33g.tar.gz" >> .gitignore

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV



$ date
Tue Dec 28 11:41:17 EST 2021
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-120.cm.cluster
```
