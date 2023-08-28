# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/bcftools/releases/download/1.18/bcftools-1.18.tar.bz2 -O bcftools.tar.bz2
tar -xjvf bcftools.tar.bz2
cd bcftools-1.18
./configure prefix=/jhpce/shared/libd/core/bcftools/1.18
make
make install

## Ignore all downloaded/installed files
cd ..
echo "bcftools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore
echo "libexec" >> .gitignore

## Set permissions
chmod -R 775 .

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
echo "Node name: ${SLURMD_NODENAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Mon Aug 28 11:41:14 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
