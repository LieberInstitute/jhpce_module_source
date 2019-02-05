# Installation

```bash
## Commands used for installing the software

## Load wiggletools for htslib 1.9 and libBigWig
module load wiggletools/1.2.1

## Get bamcount
wget https://github.com/BenLangmead/bamcount/releases/download/0.2.5/bamcount-0.2.5.zip
unzip bamcount-0.2.5.zip

## Ignore all downloaded/installed files
echo "bamcount*" > .gitignore

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
  1) JHPCE_DEFAULT_ENV   5) COMMUNITY_DEFAULT_ENV   9) git/2.17.0
  2) matlab/R2017b       6) sge/2011.11p1          10) wiggletools/1.2.1
  3) stata/15            7) conda_R/3.5.x
  4) JHPCE_tools/1.0     8) gcc/4.4.7



$ date
Tue Feb  5 16:22:40 EST 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-079

$ echo $PATH
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/WiggleTools/bin:/jhpce/shared/jhpce/core/git/2.17.0/bin:/users/lcollado/miniconda3/bin:/users/lcollado/software/rmate/bin:/users/lcollado/software/localruby/bin:/users/lcollado/software/git-lfs-1.5.4:/users/lcollado/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5.x/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5.x/R/3.5.x/bin:/jhpce/shared/jhpce/core/conda/miniconda-3/bin:/cm/shared/apps/sge/2011.11p1/bin/linux-x64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/bin:/jhpce/shared/jhpce/core/stata/15:/jhpce/shared/jhpce/core/matlab/R2017b/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/jhpce/shared/jhpce/stata/13:/opt/dell/srvadmin/bin
$ echo ${C_INCLUDE_PATH}
/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5.x/include
$ echo ${LD_LIBRARY_PATH}
/jhpce/shared/jhpce/libd/wiggletools/1.2.1/lib:/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5.x/lib:/cm/shared/apps/sge/2011.11p1/lib/linux-x64:/jhpce/shared/jhpce/core/JHPCE_tools/1.0/lib
$ echo ${LIBRARY_PATH}
/jhpce/shared/jhpce/core/conda/miniconda-3/envs/svnR-3.5.x/lib
```
