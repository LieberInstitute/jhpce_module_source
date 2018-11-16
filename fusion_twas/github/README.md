# Installation

```bash
## Commands used for installing the software
git clone git@github.com:gusevlab/fusion_twas.git

## Edit the location of glist-hg19
cd fusion_twas
git checkout -b jhpce
## Edit these lines
# https://github.com/gusevlab/fusion_twas/blob/master/FUSION.post_process.R#L112-L118
## such that glist-hg19 is replaced by
## /jhpce/shared/jhpce/libd/fusion_twas/github/fusion_twas/glist-hg19
rmate FUSION.post_process.R
git commit -am "Change glist-hg19 path for JHPCE"

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/fusion_twas/github
echo "fusion_twas" > .gitignore

## Version control files
git add .gitignore
git add README.md
```

# Complete installation

See http://gusevlab.org/projects/fusion/ for full instructions.

```R
install.packages(c('optparse', 'RColorBrewer', 'glmnet'))

## If needed: install.packages('devtools')
devtools::install_github('gabraham/plink2R/plink2R')
```

Currently, we haven't installed the `GEMMA` software http://www.xzlab.org/software.html which is needed when using BSLMM according to the manual

# Usage

Use the full path when calling the `fusion_twas` R scripts. For example:

```bash
module load fusion_twas
Rscript /jhpce/shared/jhpce/libd/fusion_twas/github/fusion_twas/FUSION.compute_weights.R --help
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
Fri Nov 16 16:04:01 EST 2018
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-116
```
