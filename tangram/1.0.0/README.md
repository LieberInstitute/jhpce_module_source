# Installation

```bash
## Commands used for installing the software

#  Clone the repo
git clone git@github.com:broadinstitute/Tangram.git

#  Create a conda environment as specified in the repo
mkdir tangram_env
conda env create -f Tangram/environment.yml -p $PWD/tangram_env

#  Manually install tangram and an additional python package that we'll need
conda activate $PWD/tangram_env
pip install pyhere
pip install tangram-sc==1.0.0
conda deactivate

## Ignore all downloaded/installed files
echo "Tangram" >> .gitignore
echo "tangram_env" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/tangram

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 755 /jhpce/shared/jhpce/libd/tangram/1.0.0/tangram_env

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
  2) stata/17          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9
  
$ date
Mon Nov  1 14:35:31 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-112.cm.cluster
```
