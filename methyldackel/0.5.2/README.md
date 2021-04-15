# Installation

```bash
## Commands used for installing the software

wd=/jhpce/shared/jhpce/libd/methyldackel/0.5.2

#  Install libBigWig (0.4.6) locally
wget https://github.com/dpryan79/libBigWig/archive/refs/tags/0.4.6.tar.gz
tar -xzf 0.4.6.tar.gz
cd libBigWig-0.4.6
make prefix=$wd install
cd ..

#  Install htslib (1.12) locally
wget https://github.com/samtools/htslib/releases/download/1.12/htslib-1.12.tar.bz2
tar -xjf htslib-1.12.tar.bz2
cd htslib-1.12
./configure
make prefix=$wd
make prefix=$wd install
cd ..

#  Install MethylDackel (0.5.2)
wget https://github.com/dpryan79/MethylDackel/archive/refs/tags/0.5.2.tar.gz
tar -xzf 0.5.2.tar.gz
cd MethylDackel-0.5.2
make CFLAGS="-O3 -Wall -I${wd}/include " LIBBIGWIG="$wd/lib/libBigWig.a" LIBS="-L$wd/lib"
make install prefix=$wd CFLAGS="-O3 -Wall -I${wd}/include " LIBBIGWIG="$wd/lib/libBigWig.a" LIBS="-L$wd/lib"
cd ..

## Ignore all downloaded/installed files
echo "*.tar.*" >> .gitignore
echo "lib*" >> .gitignore
echo "bin" >> .gitignore
echo "include" >> .gitignore
echo "share" >> .gitignore
echo "MethylDackel*" >> .gitignore
echo "htslib*" >> .gitignore

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
  1) matlab/R2019a     5) gcc/4.4.7
  2) stata/16          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9
  
$ date
Thu Apr 15 15:28:11 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-105.cm.cluster
```
