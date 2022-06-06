# Installation

```bash
## Commands used for installing the software
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
unzip fastqc_v0.11.5.zip
chmod -R 755 FastQC

## Ignore all downloaded/installed files
cat <<EOT>> .gitignore
FastQC*
fastqc*
EOT

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
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1

$ date
Tue Oct 23 19:31:14 EDT 2018

$ echo "User: ${USER}"
User: eburke

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-114

```
