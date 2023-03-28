# Installation

```bash
## Commands used for installing the software
wget --no-check-certificate https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip
unzip fastqc_v0.12.1.zip

## Ignore all downloaded/installed files
echo "FastQC" > .gitignore
echo "fastqc_v0.12.1.zip" >> .gitignore

chmod 775 -R .

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV

$ date
Tue Mar 28 14:42:27 EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-097.cm.cluster
```
