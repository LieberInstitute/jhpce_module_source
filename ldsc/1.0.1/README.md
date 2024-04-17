# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

git clone https://github.com/bulik/ldsc.git

# Use mamba, which will be faster
module load conda/3-23.3.1
# conda create -n mamba_env -c conda-forge mamba
conda activate mamba_env

mamba env create -p ldsc_env -f ldsc/environment.yml

## Ignore all downloaded/installed files
echo "ldsc*" > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 775 -R ldsc
chmod 555 -R ldsc_env

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
Wed Apr 17 03:01:07 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-093.cm.cluster
```
