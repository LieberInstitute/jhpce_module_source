# Installation

```bash
## Commands used for installing the software
WORK_DIR=$PWD
wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2 -O samtools.tar.bz2
tar -xjf samtools.tar.bz2
rm samtools.tar.bz2
cd samtools-1.10
./configure prefix=$WORK_DIR
make prefix=$WORK_DIR
make install
cd $WORK_DIR

## Ignore all downloaded/installed files
echo "samtools-1.10" > .gitignore
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
echo "Hostname: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Fri Jul 14 10:34:37 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
