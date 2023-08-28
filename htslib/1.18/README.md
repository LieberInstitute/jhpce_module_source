# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/htslib/releases/download/1.18/htslib-1.18.tar.bz2 -O htslib-1.18.tar.bz2
tar -xjvf htslib-1.18.tar.bz2
rm htslib-1.18.tar.bz2
cd htslib-1.18
./configure prefix=/jhpce/shared/libd/core/htslib/1.18
make
make install

## Ignore all downloaded/installed files
cd ..
echo "htslib-1.18" > .gitignore
echo "bin" >> .gitignore
echo "include" >> .gitignore
echo "share" >> .gitignore
echo "lib" >> .gitignore

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
Mon Aug 28 12:54:22 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
