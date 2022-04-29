# Installation

```bash
## Commands used for installing the software

# At the time this command was run, the latest stable release available from
# GitHub was 22.04.0
curl -s https://get.nextflow.io | bash

## Ignore all downloaded/installed files
echo "nextflow" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/nextflow/22.04.0

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
Fri Apr 29 14:46:36 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-122.cm.cluster
```
