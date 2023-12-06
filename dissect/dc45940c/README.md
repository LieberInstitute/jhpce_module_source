# Installation

```bash
## Commands used for installing the software

# Don't rely on user-specific packages
export PYTHONNOUSERSITE="anything"

git clone git@github.com:robinredX/DISSECT.git

# Create a conda environment with python 3.8 and the recommended pip
# dependencies. Also manually install tensorflow, which for some reason wasn't
# in the requirements.txt
module load conda/3-23.3.1
conda create -y -p dissect_env -c conda-forge python=3.8
conda activate ./dissect_env
# pip install --upgrade -r DISSECT/requirements.txt
# Install tensorflow with GPU support
pip install --extra-index-url https://pypi.nvidia.com tensorrt-bindings==8.6.1 tensorrt-libs==8.6.1
pip install --upgrade tensorflow[and-cuda]
# Dependencies in 'requirements.txt' conflict with tensorflow, which for some
# reason isn't included in 'requirements.txt'. Here I manually install
# dependencies, specifying versions only for major packages (and those that
# break with more recent versions)
pip install scikit-learn==1.1.2 anndata==0.8.0 scanpy==1.9.1 matplotlib==3.5.0 pandas==1.4.3
pip install numpy h5py shap Cython setuptools tqdm
conda deactivate

## Ignore all downloaded/installed files
echo "DISSECT" > .gitignore
echo "dissect_env" >> .gitignore

#   Set loose permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 -R .
chmod 555 -R dissect_env

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Wed Dec  6 04:49:32 PM EST 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-150.cm.cluster
```
