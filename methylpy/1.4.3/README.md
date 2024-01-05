# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

module load conda/3-23.3.1

# Use mamba at first, which gives more informative errors and faster results
conda create -y -c conda-forge -n mamba_env mamba
conda activate mamba_env

# Install 'methylpy' via conda, which correctly installs all dependencies,
# despite the installation instructions on the git repo
mamba create -y -c bioconda -c conda-forge -p $PWD/methylpy_env methylpy
conda activate $PWD/methylpy_env

# Download and run the official test of methylpy components
wget http://neomorph.salk.edu/yupeng/share/methylpy_test.tar.gz
tar -xf methylpy_test.tar.gz
rm methylpy_test.tar.gz
cd methylpy_test/
python run_test.py
cd ..

conda deactivate

## Ignore all downloaded/installed files
echo "methylpy_*" > .gitignore

chmod -R 775 ..

#  Remove write permissions on conda environment to prevent accidental 'pip' or
#  'conda' commands from permanently changing the module for all users
chmod -R 555 methylpy_env

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
Fri Jan  5 03:22:24 PM EST 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-141
```
