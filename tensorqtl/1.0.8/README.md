# Installation

```bash
#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

## Commands used for installing the software

#  Download tensorQTL 1.0.8 repo to get their requirements.txt suggestion
wget https://github.com/broadinstitute/tensorqtl/archive/refs/tags/v1.0.8.tar.gz
tar -xzf v1.0.8.tar.gz
rm v1.0.8.tar.gz

#  Build a conda environment with python, and R (needed for integration with
#  rpy2)
source /jhpce/shared/jhpce/core/conda/miniconda3-23.3.1/etc/profile.d/conda.sh
conda create -y -p $PWD/tensorqtl_env -c conda-forge mamba
conda activate $PWD/tensorqtl_env

#  'rpy2' seems to need a very recent version of python, but recent versions of
#  python don't have versions of torch + CUDA compatible with our GPUs. So we
#  have to be careful about the versions of python, rpy2, and torch here
mamba install -y -c anaconda python==3.9
pip install rpy2==3.5.12
pip install torch==1.11.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html

#  Otherwise, install dependencies as recommended in the repo, and add some more
#  packages we frequently use
pip install -r tensorqtl-1.0.8/install/requirements.txt
pip install session-info pyhere plotnine

#  Now install tensorqtl itself
pip install tensorqtl==1.0.8

#  'rpy2' needs R and the 'qvalue' package
mamba install -y -c conda-forge r-base==4.2.0
mamba install -y -c bioconda bioconductor-qvalue

conda deactivate

## Ignore all downloaded/installed files
echo "tensorqtl*" > .gitignore

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod 775 .
chmod 775 -R tensorqtl-1.0.8
chmod 775 README.md
chmod 775 .gitignore
chmod -R 555 tensorqtl_env

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
  1) JHPCE_tools/3.0

 

$ date
Tue Sep 26 03:40:36 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-070
```
