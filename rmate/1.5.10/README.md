# Installation

```bash
## Commands used for installing the software
git clone git@github.com:textmate/rmate.git

## Ignore all downloaded/installed files
echo "rmate" >> .gitignore

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
$ module list

Currently Loaded Modules:
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV  10) git-lfs/2.8.0   13) conda_R/devel
  2) stata/17          5) gcc/4.4.7                       8) git-status-size/github     11) rmate/1.5.9
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) git/2.28.0                 12) conda/3-4.6.14



$ date
Mon Jun  6 16:09:54 EDT 2022
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-093.cm.cluster
```
