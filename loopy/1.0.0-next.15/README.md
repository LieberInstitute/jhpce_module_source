# Installation

```bash
## Commands used for installing the software

#   Pull Samui v1.0.0-next.15
wget https://github.com/chaichontat/samui/archive/refs/tags/v1.0.0-next.15.tar.gz
tar -xzf v1.0.0-next.15.tar.gz
rm v1.0.0-next.15.tar.gz
mv samui-1.0.0-next.15 samui

#   Create a small environment including mamba, since conda is
#   prohibitively slow when trying to create an environment directly with all
#   the loopy dependencies
conda create -y -n mamba_env -c conda-forge mamba
conda activate mamba_env

#   Use mamba to create a conda environment 
mamba env create -p samui_env -f samui/environment.yml

#   Add a couple python packages (pyhere, openpyxl)
conda activate ./samui_env
pip install pyhere openpyxl
conda deactivate

## Ignore all downloaded/installed files
echo "samui*" > .gitignore

#   Set loose permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 -R .
chmod 755 -R samui_env

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
Fri Feb 17 15:04:59 EST 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-124.cm.cluster
```