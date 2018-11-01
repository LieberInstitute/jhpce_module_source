# Installation

```bash
## Commands used for installing the software
git clone https://github.com/dpryan79/libBigWig.git && \
    cd libBigWig && \
    make prefix=/jhpce/shared/jhpce/libd/wiggletools/1.2.1 install

cd /jhpce/shared/jhpce/libd/wiggletools/1.2.1

wget https://github.com/samtools/htslib/releases/download/1.9/htslib-1.9.tar.bz2 && \
     tar -xjvf htslib-1.9.tar.bz2 && \
     cd htslib-1.9 && \
     make && \
     make prefix=/jhpce/shared/jhpce/libd/wiggletools/1.2.1 install

cd /jhpce/shared/jhpce/libd/wiggletools/1.2.1

export C_INCLUDE_PATH="/jhpce/shared/jhpce/libd/wiggletools/1.2.1/include:${C_INCLUDE_PATH}"
export LD_LIBRARY_PATH="/jhpce/shared/jhpce/libd/wiggletools/1.2.1/lib:${LD_LIBRARY_PATH}"
export LIBRARY_PATH="/jhpce/shared/jhpce/libd/wiggletools/1.2.1/lib:${LIBRARY_PATH}"
export PATH="/jhpce/shared/jhpce/libd/wiggletools/1.2.1/bin:${PATH}"

git clone https://github.com/Ensembl/WiggleTools.git && \
    cd WiggleTools && \
    make

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/wiggletools/1.2.1
echo "htslib*" > .gitignore
echo "bin" >> .gitignore
echo "lib" >> .gitignore
echo "include" >> .gitignore
echo "libBigWig" >> .gitignore
echo "share" >> .gitignore
echo "WiggleTools" >> .gitignore

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

echo $PATH
echo ${C_INCLUDE_PATH}
echo ${LD_LIBRARY_PATH}
echo ${LIBRARY_PATH}
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1           9) git/2.17.0



$ date
Thu Nov  1 11:03:07 EDT 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-113

$ echo $PATH
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/bin:/jhpce/shared/jhpce/core/git/2.17.0/bin:/users/lcollado/software:/users/lcollado/miniconda3/bin:/users/lcollado/software/rmate/bin:/users/lcollado/software/localruby/bin:/users/lcollado/software/git-lfs-1.5.4:/users/lcollado/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5/R/3.5/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/bin:/cm/shared/apps/sge/2011.11p1/bin/linux-x64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/bin:/jhpce/shared/jhpce/core/stata/15:/jhpce/shared/jhpce/core/matlab/R2017b/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/jhpce/shared/jhpce/stata/13:/opt/dell/srvadmin/bin
$ echo ${C_INCLUDE_PATH}
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/include:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5/include
$ echo ${LD_LIBRARY_PATH}
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/lib:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5/lib:/cm/shared/apps/sge/2011.11p1/lib/linux-x64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/lib
$ echo ${LIBRARY_PATH}
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/lib:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5/lib
```
