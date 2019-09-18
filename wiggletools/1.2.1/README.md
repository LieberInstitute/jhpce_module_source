# Installation

```bash
## Commands used for installing the software
module unload conda_R
module unload conda
module unload gcc/4.4.7

module use /jhpce/shared/community/modulefiles/core
module load htslib/1.9
module load zlib

## Store everything in wiggle
mkdir wiggle
cd wiggle

## Install gsl
wget ftp://www.mirrorservice.org/sites/ftp.gnu.org/gnu/gsl/gsl-latest.tar.gz && \
    tar xvf gsl-latest.tar.gz && \
    cd gsl-2.6 && \
    ./configure --prefix=/jhpce/shared/jhpce/libd/wiggletools/1.2.1/wiggle && \
    make && \
    make install && \
    cd ..

## Install libBigWig
git clone git@github.com:dpryan79/libBigWig.git && \
    cd libBigWig && \
    make prefix=/jhpce/shared/jhpce/libd/wiggletools/1.2.1/wiggle install && \
    cd ..


## Also add htslib/1.9 to LIBRARY_PATH (not needed if using: module use /jhpce/shared/jhpce/modulefiles/libd)
export LIBRARY_PATH="/jhpce/shared/community/core/htslib/1.9/lib:${LIBRARY_PATH}"

git clone git@github.com:Ensembl/WiggleTools.git && \
    cd WiggleTools && \
    ## Make the one of the edits Mark Miller described at https://lists.johnshopkins.edu/sympa/arc/bithelp/2019-09/msg00132.html
    ## Change LIBS from:
    # LIBS= -lwiggletools -l:libBigWig.a -lcurl -l:libhts.a -lgsl  -lgslcblas -lz -lpthread -lm
    ## to:
    # LIBS= -lwiggletools -l:libBigWig.a -lcurl -l:libhts.a -lgsl  -lgslcblas -lz -lpthread -lm -lcrypto -llzma -lbz2
    make
    ## Copy to bin folder with other stuff
    cp bin/* ../bin/

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/wiggletools/1.2.1
chmod -R 775 wiggle
echo "wiggle" > .gitignore

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
  1) matlab/R2019a   2) stata/16   3) JHPCE_tools/1.0   4) sge/8.1.9   5) COMMUNITY_CENTOS7_DEFAULT_ENV   6) JHPCE_CENTOS7_DEFAULT_ENV   7) git/2.17.0   8) git-status-size/github   9) ruby/2.6.4p104  10) rmate/1.5.9  11) htslib/1.9  12) zlib/1.2.11



$ date
Wed Sep 18 17:10:31 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-095.cm.cluster

$ echo $PATH
/jhpce/shared/community/core/htslib/1.9/bin:/jhpce/shared/jhpce/libd/rmate/1.5.9/rmate/bin:/jhpce/shared/jhpce/libd/ruby/2.6.4p104/rubyinstall/bin:/jhpce/shared/jhpce/libd/git-status-size/github/git-status-size:/jhpce/shared/jhpce/core/git/2.17.0/bin:/cm/shared/apps/sge/sge-8.1.9/bin/lx-amd64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/bin:/jhpce/shared/jhpce/core/stata/16:/jhpce/shared/jhpce/core/matlab/R2019a/bin:/cm/shared/apps/sge/sge-8.1.9/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
$ echo ${C_INCLUDE_PATH}
/jhpce/shared/jhpce/core/zlib/1.2.11/include:/jhpce/shared/community/core/htslib/1.9/include
$ echo ${LD_LIBRARY_PATH}
/jhpce/shared/jhpce/core/zlib/1.2.11/lib:/jhpce/shared/community/core/htslib/1.9/lib:/cm/shared/apps/sge/sge-8.1.9/lib/lx-amd64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/lib
$ echo ${LIBRARY_PATH}
/jhpce/shared/community/core/htslib/1.9/lib:
```
