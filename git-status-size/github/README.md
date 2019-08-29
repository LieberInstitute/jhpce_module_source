# Installation

```bash
## Commands used for installing the software
git clone git@github.com:jtloong/git-status-size.git

## Ignore all downloaded/installed files
echo "git-status-size" >> .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) ruby/2.6.4p104
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git/2.17.0                 10) rmate/1.5.9



$ date
Thu Aug 29 11:46:19 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-062.cm.cluster
```
