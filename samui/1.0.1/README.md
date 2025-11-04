# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Pull Samui v1.0.0-next.49
wget https://github.com/chaichontat/samui/archive/refs/tags/v1.0.1.tar.gz
tar -xzf v1.0.1.tar.gz
rm v1.0.1.tar.gz
mv samui-1.0.1/* samui

# Use conda for env
module load conda/3-24.3.0
conda env create -p samui_env -f samui/environment.yml

#   Add a couple python packages
conda activate ./samui_env
pip install pyhere session_info openpyxl lxml pypng
conda deactivate

## Ignore all downloaded/installed files
echo "samui*" > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 -R samui README.md .gitignore .
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
date
echo "User: ${USER}"
echo "Hostname: ${HOSTNAME}"

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) ruby/3.2.2   4) rmate/1.5.10   5) conda/3-24.3.0



Tue Nov  4 03:13:25 PM EST 2025
User: rmiller
Hostname: compute-121.cm.cluster
```
