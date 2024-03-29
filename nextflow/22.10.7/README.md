# Installation

```bash
## Commands used for installing the software

MODSRC=/jhpce/shared/libd/core
VER='22.10.7'
wget -O nextflow https://github.com/nextflow-io/nextflow/releases/download/v${VER}/nextflow-${VER}-all
mkdir -p $MODSRC/nextflow/$VER
mv nextflow $MODSRC/nextflow/$VER
## Ignore all downloaded/installed files
#echo "nextflow" > .gitignore

chmod -R 775 $MODSRC/nextflow/$VER

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
