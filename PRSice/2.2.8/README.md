# Installation

```bash
## Commands used for installing the software
## Instructions from https://www.prsice.info/compilation/
curl https://codeload.github.com/choishingwan/PRSice/tar.gz/2.2.8 > PRSice.tar.gz
tar -xvf PRSice.tar.gz
mv PRSice-2* PRSice-local
cd PRSice-local
mkdir build
cd build
cmake ../
make
cd ..
chmod -R 775 PRSice-local

## Ignore all downloaded/installed files
echo "PRSice*" > .gitignore

## Version control files
git add .gitignore
chmod -R 775 README.md
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
  1) matlab/R2019a     6) COMMUNITY_CENTOS7_DEFAULT_ENV  11) ruby/2.6.4p104
  2) stata/16          7) JHPCE_CENTOS7_DEFAULT_ENV      12) rmate/1.5.9
  3) JHPCE_tools/1.0   8) git-status-size/github         13) conda/3-4.6.14
  4) sge/8.1.9         9) git/2.23.0                     14) conda_R/3.6.x
  5) gcc/4.4.7        10) git-lfs/2.8.0

 

$ date
Mon May 11 16:01:09 EDT 2020
$ echo "User: ${USER}"
User: jstolz
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-092.cm.cluster

```
