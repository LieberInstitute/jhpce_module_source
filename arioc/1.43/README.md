# Installation

```bash
## Commands used for installing the software

#  Download and unzip
wget https://github.com/RWilton/Arioc/releases/download/v1.43/Arioc.x.143.zip
unzip Arioc.x.143.zip

#  Prepare tools needed for installation (note we are on the GPU node!)
module load gcc/5.5.0
export CPATH=/usr/local/cuda-10.1/targets/x86_64-linux/include:$CPATH
export LD_LIBRARY_PATH=/usr/local/cuda-10.1/targets/x86_64-linux/lib:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-10.1/bin:$PATH

#  Build from source
cd src
make clean
make AriocE
make AriocU
make AriocP
cd ..

## Ignore all downloaded/installed files
echo "src" >> .gitignore
echo "bin" >> .gitignore
echo "Arioc.x.143.zip" >> .gitignore

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
  1) matlab/R2019a     4) sge/8.1.9                       7) gcc/5.5.0
  2) stata/16          5) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   6) JHPCE_CENTOS7_DEFAULT_ENV

$ date
Thu May  6 17:24:05 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-117.cm.cluster
```
