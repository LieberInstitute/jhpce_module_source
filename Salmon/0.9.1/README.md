# Installation

```bash
## Commands used for installing the software
wget https://github.com/COMBINE-lab/salmon/releases/download/v0.9.1/Salmon-0.9.1_linux_x86_64.tar.gz && \ 
    tar -xvzf Salmon-0.9.1_linux_x86_64.tar.gz

## Ignore all downloaded/installed files
echo "Salmon*" > .gitignore

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
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Wed Oct 31 14:35:49 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-062
```
