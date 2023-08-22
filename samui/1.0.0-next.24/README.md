# Installation

```bash
## Commands used for installing the software

wget https://github.com/chaichontat/samui/archive/refs/tags/v1.0.0-next.24.tar.gz
tar -xzf v1.0.0-next.24.tar.gz
rm v1.0.0-next.24.tar.gz
mv samui-1.0.0-next.24 samui

conda env create -p samui_env -f samui/environment.yml

#   Add a couple python packages
conda activate ./samui_env
pip install pyhere openpyxl lxml pypng session-info
conda deactivate

## Ignore all downloaded/installed files
echo samui > .gitignore
echo samui_env >> .gitignore

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
echo "Hostname: ${SLURMD_NODENAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Tue Aug 22 10:44:43 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${SLURMD_NODENAME}"
Hostname: compute-111
```