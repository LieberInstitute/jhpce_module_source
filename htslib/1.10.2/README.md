# Installation

```bash
## Commands used for installing the software
WORK_DIR=$PWD
wget https://github.com/samtools/htslib/releases/download/1.10.2/htslib-1.10.2.tar.bz2 -O htslib-1.10.2.tar.bz2
tar -xjvf htslib-1.10.2.tar.bz2
rm htslib-1.10.2.tar.bz2
cd htslib-1.10.2
./configure prefix=$WORK_DIR
make prefix=$WORK_DIR
make install
cd $WORK_DIR

## Ignore all downloaded/installed files

echo "htslib*" > .gitignore
echo "bin" >> .gitignore
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
echo "Hostname: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Fri Jul 14 09:50:43 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
