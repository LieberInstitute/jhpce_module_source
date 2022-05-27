# Installation

```bash
## Commands used for installing the software
curl -O https://ctg.cncr.nl/software/MAGMA/prog/magma_v1.10_static.zip
unzip magma_v1.10_static.zip

echo "magma*" > .gitignore
echo "README" >> .gitignore
echo "CHANGELOG" >> .gitignore
echo "manual*.pdf" >> .gitignore
chmod -R 775 ..

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
Fri May 27 14:41:30 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-107.cm.cluster
```
