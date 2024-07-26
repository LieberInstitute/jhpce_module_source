# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

# Use mamba, which will be faster
module load conda/3-23.3.1
# conda create -n mamba_env -c conda-forge mamba
conda activate mamba_env

#   Create a conda environment with the recommended dependencies
mamba create -y -p nda_env python==3.10

#   Install nda-tools 0.3.0 and some additional packages we commonly use
conda activate ./nda_env
pip install nda-tools==0.3.0 pyhere session_info openpyxl

#   NDA-recommended solution if keyring backend doesn't exist after installation
pip install secretstorage --upgrade keyrings.alt
conda deactivate

## Ignore all downloaded/installed files
echo "nda_env" > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 . README.md .gitignore
chmod 555 -R nda_env

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Fri Jul 26 11:50:22 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-150.cm.cluster
```
