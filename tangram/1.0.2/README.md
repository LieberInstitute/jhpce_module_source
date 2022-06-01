# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#  Clone the repo
git clone git@github.com:broadinstitute/Tangram.git

#  Create a conda environment as specified in the repo
mkdir tangram_env
conda env create -f Tangram/environment.yml -p $PWD/tangram_env

#  Manually install tangram and an additional python package that we'll need
conda activate $PWD/tangram_env
pip install pyhere
pip install tangram-sc==1.0.2
pip install squidpy==1.1.0
conda deactivate

## Ignore all downloaded/installed files
echo "Tangram" > .gitignore
echo "tangram_env" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/tangram/1.0.2

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 555 /jhpce/shared/jhpce/libd/tangram/1.0.2/tangram_env

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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV
  
$ date
Wed Jun  1 12:42:45 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-092.cm.cluster
```
