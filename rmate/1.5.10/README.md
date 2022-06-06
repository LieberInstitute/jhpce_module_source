# Installation

```bash
## Commands used for installing the software
git clone git@github.com:textmate/rmate.git

## Ignore all downloaded/installed files
echo "rmate" >> .gitignore

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
$ module list

Currently Loaded Modules:
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git/2.17.0



$ date
Thu Aug 29 10:40:40 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-070.cm.cluster
```
