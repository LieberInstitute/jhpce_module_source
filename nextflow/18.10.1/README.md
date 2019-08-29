# Installation

```bash
## Commands used for installing the software
# As of 2019-08-29 the java module no longer exists
# module load java/1.8.0
curl -s https://get.nextflow.io | bash

## Ignore all downloaded/installed files
echo "nextflow" > .gitignore

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
  1) JHPCE_DEFAULT_ENV   5) COMMUNITY_DEFAULT_ENV   9) git/2.17.0
  2) matlab/R2017b       6) sge/2011.11p1          10) java/1.8.0
  3) stata/15            7) conda_R/3.5
  4) JHPCE_tools/1.0     8) gcc/4.4.7



$ date
Thu Nov 29 17:20:21 EST 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-108
```
