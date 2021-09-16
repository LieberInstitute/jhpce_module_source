# Installation

```bash
## Commands used for installing the software

#  Beginning on the GPU node, create and enter a python virtual environment
module load python/3.7.3
BASE=$PWD
python3 -m venv $BASE/resept_venv
source resept_venv/bin/activate

#  Install PyTorch for CUDA 10.1
python -m pip install torch==1.5.1+cu101 torchvision==0.6.1+cu101 -f https://download.pytorch.org/whl/torch_stable.html

#  Install another python dependency
python -m pip install mmcv-full==1.3.0 -f https://download.openmmlab.com/mmcv/dist/cu101/torch1.5.0/index.html

#  Clone repo, including the python scripts of interest
git clone https://github.com/OSU-BMBL/RESEPT

#  Install remaining python dependencies
cd RESEPT
python -m pip install -r requirements.txt

#  Fix a couple system calls in the RESEPT code to allow invoking python
#  scripts from outside the RESEPT directory
sed -i 's/python -W ignore \(.*\)\.py/python -W ignore $(which \1.py)/' generate_embedding.py
cd ..

#  Exit virtual environment
deactivate

## Ignore all downloaded/installed files
echo "RESEPT" >> .gitignore
echo "resept_venv" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/resept

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
  1) matlab/R2019a     5) gcc/4.4.7
  2) stata/16          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9         8) python/3.7.3
  
$ date
Wed Sep  8 12:22:23 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-117.cm.cluster
```
