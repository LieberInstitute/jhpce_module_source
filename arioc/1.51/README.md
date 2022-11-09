# Installation

```bash
## Commands used for installing the software

#   We'll do this on gpu to ensure things work (lowest CUDA_CC)

export CUDA_VISIBLE_DEVICES=0
wget Arioc.x.151.zip https://github.com/RWilton/Arioc/releases/download/v1.51/Arioc.x.151.zip
unzip Arioc.x.151.zip

#   From Arioc 1.43 module:
module load gcc/5.5.0
export PATH=/usr/local/cuda/bin:$PATH

cd src
make clean
make AriocE
make AriocU
make AriocP
cd ..

chmod -R 775 /jhpce/shared/jhpce/libd/arioc/1.51

## Ignore all downloaded/installed files
echo "src" >> .gitignore
echo "bin" >> .gitignore
echo "Arioc.x.151.zip" >> .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) COMMUNITY_CENTOS7_DEFAULT_ENV   7) gcc/5.5.0
  2) stata/17        4) sge/8.1.9         6) JHPCE_CENTOS7_DEFAULT_ENV

$ date
Wed Nov  9 14:41:11 EST 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-117.cm.cluster
```
