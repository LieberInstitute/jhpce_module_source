# Installation

```bash
## Commands used for installing the software
module unload conda_R
wget https://github.com/pachterlab/kallisto/releases/download/v0.46.1/kallisto_linux-v0.46.1.tar.gz
tar xzvf kallisto_linux-v0.46.1.tar.gz

## Ignore all downloaded/installed files
echo "kallisto*" >> .gitignore

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV  10) git-lfs/2.8.0   13) conda/3-4.6.14
  2) stata/16          5) gcc/4.4.7                       8) git-status-size/github     11) ruby/2.6.4p104
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) git/2.23.0                 12) rmate/1.5.9



$ date
Fri Dec  6 13:28:44 EST 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-110.cm.cluster
```
