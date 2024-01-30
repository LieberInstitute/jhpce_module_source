# Installation

```bash
## Commands used for installing the software

VER='23.10.0'
wget -O nextflow https://github.com/nextflow-io/nextflow/releases/download/v${VER}/nextflow-${VER}-all

# Also install latest nf-test (0.8.4)
curl -fsSL https://code.askimed.com/install/nf-test | bash

## Ignore all downloaded/installed files
echo "nextflow" > .gitignore
echo "nf-test" >> .gitignore

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Wed Nov 22 02:32:27 PM EST 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-116.cm.cluster
```
