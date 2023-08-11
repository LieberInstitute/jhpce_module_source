# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

git clone https://github.com/DongqingSun96/STRIDE.git

#   Create a conda environment containing STRIDE
conda create -y -p $PWD/stride_env python=3.8
conda activate $PWD/stride_env
pip install stride
pip install -r STRIDE/requirements.txt
cd STRIDE
python setup.py install
conda deactivate
cd ..

## Ignore all downloaded/installed files
echo "stride_env" > .gitignore
echo "STRIDE" >> .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod -R 775 .
chmod -R 555 stride_env

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
Fri Aug 11 10:51:40 EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-110.cm.cluster
```
