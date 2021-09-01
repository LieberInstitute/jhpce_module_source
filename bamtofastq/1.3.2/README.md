# Installation

```bash
## Commands used for installing the software
wget https://cf.10xgenomics.com/misc/bamtofastq-1.3.2
mv bamtofastq-1.3.2 bamtofastq
chmod 755 bamtofastq

## Ignore all downloaded/installed files
echo "bamtofastq" >> .gitignore

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
  1) matlab/R2021a     5) gcc/4.4.7                       9) git/2.28.0      13) conda/3-4.6.14
  2) stata/16          6) COMMUNITY_CENTOS7_DEFAULT_ENV  10) git-lfs/2.8.0   14) conda_R/4.1
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV      11) ruby/2.6.4p104
  4) sge/8.1.9         8) git-status-size/github         12) rmate/1.5.9
  
$ date
Wed Sep  1 11:40:09 EDT 2021

$ echo "User: ${USER}"
User: lcollado

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-121.cm.cluster
```
