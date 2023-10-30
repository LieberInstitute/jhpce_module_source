# Installation

```bash
## Commands used for installing the software

MODSRC=/jhpce/shared/libd/core
VER='17'
mkdir -p $MODSRC/java
cd $MODSRC/java
wget -O- https://download.oracle.com/java/17/archive/jdk-17.0.9_linux-x64_bin.tar.gz | tar xvzf -
mv jdk-17.0.9 $VER
cd $VER
## Ignore all downloaded/installed files
echo "bin conf include jmods legal lib LICENSE man README release" | tr " " "\n" > .gitignore

chmod -R a+rX $MODSRC/java/$VER

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

$ date

Mon Oct 30 01:41:44 PM EDT 2023

$ echo "User: ${USER}"
User: gpertea1

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-148.cm.cluster
```
