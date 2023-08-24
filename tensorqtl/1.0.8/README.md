# Installation

```bash
## Commands used for installing the software

#  Create and enter a python virtual environment (we'll actually need R and
#  some system utilities made available through conda_R/4.3). Note that we're
#  on the 'caracol' node!
module load conda_R/4.3
python -m venv ./tensorqtl_venv
source tensorqtl_venv/bin/activate

#  Upgrade pip and install CUDA-aware pytorch. Also add packages I frequently
#  use
python -m pip install --upgrade pip
python -m pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
pip install session-info pyhere

#  Install tensorQTL 1.0.8 (The git repo doesn't have a 1.0.8 release yet, so
#  we'll clone the latest commit)
git clone git@github.com:broadinstitute/tensorqtl.git
cd tensorqtl
git checkout 890f32977f36d7e5be2d0820c7f382764617b553

#  Despite not explicitly installing tensorqtl==1.0.8 (which isn't available
#  from pip yet!), it does appear to be installed as a dependency at version
#  1.0.8
python -m pip install -r install/requirements.txt

#  Exit virtual environment
deactivate

## Ignore all downloaded/installed files
echo "tensorqtl*" > .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the virtual environment
chmod -R 775 /jhpce/shared/jhpce/libd/tensorqtl/1.0.8
chmod -R 555 /jhpce/shared/jhpce/libd/tensorqtl/1.0.8/tensorqtl_venv

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
  2) stata/17          5) gcc/4.4.7                       8) conda/3-4.11.0
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) conda_R/4.3



$ date
Fri Jun 16 11:44:40 EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
