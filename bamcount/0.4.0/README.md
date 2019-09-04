# Installation

```bash
## Commands used for installing the software

## Download bamcount
https://github.com/ChristopherWilks/bamcount/releases/download/0.4.0/bamcount-0.4.0.zip
unzip bamcount-0.4.0.zip

mkdir bamcount-0.4.0
cd bamcount-0.4.0
## Make a link to the static version that according to
## https://github.com/ChristopherWilks/bamcount/releases/tag/0.4.0
## doesn't need `htslib` nor `libBigWig`
ln -s ../bamcount_static bamcount
cd ..

## Ignore all downloaded/installed files
echo "bamcount*" > .gitignore
echo "*zip" >> .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git-status-size/github  11) rmate/1.5.9
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git/2.17.0                 10) ruby/2.6.4p104



$ date
Wed Sep  4 11:41:05 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-060.cm.cluster
```
