# Installation

```bash
## Commands used for installing the software

## Download bamcount
wget https://github.com/BenLangmead/bamcount/archive/0.2.6.zip
unzip 0.2.6.zip

cd bamcount-0.2.6

## Build dependencies
bash get_htslib.sh
bash get_libBigWig.sh

## build bamcount
mkdir -p build && cd build && cmake .. && make

cd /jhpce/shared/jhpce/libd/bamcount/0.2.6

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
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5.x
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Wed Feb  6 10:11:23 EST 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-073
```
