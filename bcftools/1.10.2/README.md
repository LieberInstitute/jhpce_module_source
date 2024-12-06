# Installation

```bash
## Commands used for installing the software
WORK_DIR=$PWD
wget https://github.com/samtools/bcftools/releases/download/1.10.2/bcftools-1.10.2.tar.bz2 -O bcftools.tar.bz2
tar -xjvf bcftools.tar.bz2
cd bcftools-1.10.2
./configure prefix=$WORK_DIR
make
make install

## Ignore all downloaded/installed files
cd $WORK_DIR
echo "bcftools*" > .gitignore
echo "bin" >> .gitignore
echo "share" >> .gitignore
echo "libexec" >> .gitignore

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
$ date
$ echo "User: ${USER}"
$ echo "Hostname: ${HOSTNAME}"
```
