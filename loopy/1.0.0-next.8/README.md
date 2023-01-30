# Installation

```bash
## Commands used for installing the software

#   Pull Loopy v1.0.0-next.8
wget https://github.com/chaichontat/loopy-browser/archive/refs/tags/v1.0.0-next.8.tar.gz
tar -xzf v1.0.0-next.8.tar.gz
rm v1.0.0-next.8.tar.gz
mv loopy-browser-1.0.0-next.8 loopy-browser

#   Create a small environment including mamba, since conda is
#   prohibitively slow when trying to create an environment directly with all
#   the loopy dependencies
conda create -y -n mamba_env -c conda-forge mamba
conda activate mamba_env

#   Use mamba to create a conda environment 
mamba env create -p loopy_env -f loopy-browser/environment.yml

## Ignore all downloaded/installed files
echo "loopy-browser" > .gitignore
echo "loopy_env" >> .gitignore

#   Set loose permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 -R .
chmod 755 -R loopy_env

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV

$ date
Mon Jan 30 14:19:15 EST 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-076.cm.cluster
```
