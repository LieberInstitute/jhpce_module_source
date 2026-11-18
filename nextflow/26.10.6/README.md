# Installation

```bash
## Commands used for installing the software

VER='26.10.6'
wget -O nextflow https://github.com/nextflow-io/nextflow/releases/download/v${VER}/nextflow

## Ignore all downloaded/installed files
echo "nextflow" > .gitignore

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Wed Nov 18 10:06:03 AM EST 2026
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-176.cm.cluster
```
