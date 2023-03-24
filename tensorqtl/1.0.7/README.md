# Installation

```bash
## Commands used for installing the software

#  Create and enter a python virtual environment (we'll actually need R and
#  some system utilities made available through conda_R/4.1.x). Note that we're
#  on the 'caracol' node!
module load conda_R/4.1.x
python -m venv ./tensorqtl_venv
source tensorqtl_venv/bin/activate

#  Upgrade pip and install CUDA-aware pytorch
python -m pip install --upgrade pip
python -m pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#  Install tensorQTL 1.0.7
wget https://github.com/broadinstitute/tensorqtl/archive/refs/tags/v1.0.7.tar.gz
tar -xzf v1.0.7.tar.gz
cd tensorqtl-1.0.7
python -m pip install -r install/requirements.txt
python -m pip install tensorqtl==1.0.7

#  Exit virtual environment
deactivate
cd ..

## Ignore all downloaded/installed files
echo "tensorqtl*" > .gitignore
echo "v1.0.7.tar.gz" >> .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the virtual environment
chmod -R 775 /jhpce/shared/jhpce/libd/tensorqtl/1.0.7
chmod -R 755 /jhpce/shared/jhpce/libd/tensorqtl/1.0.7/tensorqtl_venv

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
  2) stata/17          5) gcc/4.4.7                       8) conda/3-4.6.14
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) conda_R/4.1.x



$ date
Fri Mar 24 15:37:57 EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
