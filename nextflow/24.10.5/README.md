# Installation

```bash
## Commands used for installing the software

VER='24.10.5'
wget -O nextflow https://github.com/nextflow-io/nextflow/releases/download/v${VER}/nextflow

# Also install latest nf-test (0.9.2)
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
Mon Apr 14 10:48:52 AM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-156.cm.cluster
```
