# Installation

```bash
## Commands used for installing the software
wget https://github.com/samtools/samtools/releases/download/1.18/samtools-1.18.tar.bz2 -O samtools.tar.bz2
tar -xjf samtools.tar.bz2
rm samtools.tar.bz2
cd samtools-1.18
./configure prefix=/jhpce/shared/libd/core/samtools/1.18
make
make install
cd ..

## Ignore all downloaded/installed files
echo "samtools-1.18" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore

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
Mon Aug 28 01:06:10 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
