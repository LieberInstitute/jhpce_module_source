# Installation

```bash
## Commands used for installing the software

#   Pull Samui v1.0.0-next.45
wget https://github.com/chaichontat/samui/archive/refs/tags/v1.0.0-next.45.tar.gz
tar -xzf v1.0.0-next.45.tar.gz
rm v1.0.0-next.45.tar.gz
mv samui-1.0.0-next.45 samui

#   Create a conda environment with the recommended dependencies
conda env create -p samui_env -f samui/environment.yml

#   Add a couple python packages
conda activate ./samui_env
pip install pyhere openpyxl lxml pypng
conda deactivate

## Ignore all downloaded/installed files
echo "samui*" > .gitignore

#   Set loose permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 -R .
chmod 555 -R samui_env

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
  1) JHPCE_tools/3.0   2) spaceranger/2.1.0

 

$ date
Fri Jul  7 11:20:10 AM EDT 202
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
