# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.10
module load conda/3-24.3.0
conda create -y -p nda_env python=3.10

conda activate ./nda_env

#   Install nda-tools 0.5.0 and some additional packages we commonly use
pip install nda-tools==0.5.0 pyhere session_info openpyxl

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Tue Aug 12 12:52:00 PM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-169.cm.cluster
```
