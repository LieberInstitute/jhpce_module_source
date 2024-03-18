# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

module load conda/3-23.3.1

# Manually create 'environment.yml' file from instructions at
# https://github.com/CellProfiler/CellProfiler/wiki/Conda-Installation,
# but manually adding 'Cython' and using cellprofiler 4.2.6 instead
# of 4.2.4
echo "name: cp4

channels:
- conda-forge
- anaconda
- bioconda
- defaults

dependencies:
- python=3.8
- pip
- numpy
- matplotlib
- pandas
- mysqlclient
- openjdk
- scikit-learn
- mahotas
- gtk2
- Jinja2=3.0.1
- inflect=5.3.0
- wxpython=4.1.0
- mysqlclient=1.4.4
- sentry-sdk=0.18.0
- pip:
    - cellprofiler==4.2.6
    - Cython
" > environment.yml

# Use mamba, which will be faster 
conda create -n mamba_env -c conda-forge mamba
conda activate mamba_env
mamba env create -p $PWD/cellprofiler_env -f environment.yml

# Remove a potentially problematic package
conda activate $PWD/cellprofiler_env
pip uninstall pooch

## Ignore all downloaded/installed files
echo "cellprofiler_env" > .gitignore

#  Set fairly open permissions for most files
chmod 775 .
chmod 775 .gitignore
chmod 775 README.md
chmod 775 environment.yml


#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 555 cellprofiler_env

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
echo "Node name: ${SLURMD_NODENAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Wed Mar 13 11:56:12 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-106
```
