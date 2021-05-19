# Installation

```bash

git clone https://github.com/broadinstitute/gtex-pipeline.git
## Commands used for installing the software

## Ignore all downloaded/installed files
echo "gtex-pipeline" >> .gitignore

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
11:28 qtl_gtex $ module list

Currently Loaded Modules:
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.28.0     11) ruby/2.6.4p104  13) conda/3-4.6.14
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0  12) rmate/1.5.9     14) conda_R/4.0.x
11:30 qtl_gtex $ date
Wed May 19 11:30:11 EDT 2021
11:30 qtl_gtex $ echo "User: ${USER}"
User: aseyedia
11:30 qtl_gtex $ echo "Hostname: ${HOSTNAME}"
Hostname: compute-105.cm.cluster
```
