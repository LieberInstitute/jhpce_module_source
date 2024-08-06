# Installation

```bash
## Commands used for installing the software

# Download the main repository
wget https://github.com/gusevlab/fusion_twas/archive/master.zip
unzip master.zip
rm master.zip

# Install GEMMA
wget https://github.com/genetics-statistics/GEMMA/releases/download/v0.98.5/gemma-0.98.5-linux-static-AMD64.gz
gunzip gemma-0.98.5-linux-static-AMD64.gz
mv gemma-0.98.5-linux-static-AMD64 fusion_twas-master/

## Ignore all downloaded/installed files
echo "fusion_twas" > .gitignore

## Version control files
git add .gitignore
git add README.md

chmod 775 -R .
```

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Tue Aug  6 11:32:37 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-114.cm.cluster
```
