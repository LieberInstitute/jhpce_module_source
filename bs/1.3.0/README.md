# Installation

Instructions: https://developer.basespace.illumina.com/docs/content/documentation/cli/cli-overview

```bash
## Commands used for installing the software
mkdir bin
wget "https://api.bintray.com/content/basespace/BaseSpaceCLI-EarlyAccess-BIN/latest/\$latest/amd64-linux/bs?bt_package=latest" -O bin/bs
chmod -R 755 bin

./bin/bs --version
BaseSpaceCLI 1.3.0 -- built on 2021-02-16 at 19:18

## Ignore all downloaded/installed files
echo "bin" > .gitignore

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
  2) stata/16          5) gcc/4.4.7                       8) git-status-size/github     11) ruby/2.6.4p104  14) conda_R/4.0.x
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) git/2.28.0                 12) rmate/1.5.9



$ date
Fri Feb 19 11:11:03 EST 2021
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-075.cm.cluster
```
