# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create an 'environment.yml' file describing the conda environment we'll
#   create
echo "channels:
  - conda-forge
  - defaults
dependencies:
  - python = 3.10.4
  - pip
  - pip:
      - synapseclient == 2.7.2
      - pandas
      - pysftp
      - pyyaml
      - pyhere" > environment.yml

#   Create a conda environment containing the python-based and command-line-
#   based synapse client
conda env create -f environment.yml -p $PWD/synapse_env

## Ignore all downloaded/installed files
echo "synapse_env" > .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod -R 775 .
chmod -R 555 synapse_env

## Version control files
git add .gitignore
git add README.md
git add environment.yml
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
Thu Jul 27 01:12:54 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
