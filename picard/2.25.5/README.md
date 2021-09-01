# Installation

```bash
## Commands used for installing the software

## Ignore all downloaded/installed files
echo "picard.jar" >> .gitignore

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
12:59 2.25.5 $ module list

Currently Loaded Modules:
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.28.0     11) ruby/2.6.4p104  13) conda/3-4.6.14  15) java/14.0.2
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0  12) rmate/1.5.9     14) conda_R/4.0.x

 

12:59 2.25.5 $ date
Fri May 21 12:59:46 EDT 2021
12:59 2.25.5 $ echo "User: $æUSERå"
User: aseyedia
12:59 2.25.5 $ echo "Hostname: $æHOSTNAMEå"
Hostname: compute-100.cm.cluster
```
