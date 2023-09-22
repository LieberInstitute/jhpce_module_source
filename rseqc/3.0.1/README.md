# Installation

```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="not_a_real_path"

#   Create a conda environment containing python, the RSeQC package, and its
#   dependencies
source /jhpce/shared/jhpce/core/conda/miniconda3-23.3.1/etc/profile.d/conda.sh
conda create -y -p $PWD/rseqc_env python=3.7.3
conda activate $PWD/rseqc_env
pip install RSeQC==3.0.1
conda deactivate

#   Download the RSeQC python scripts
wget https://downloads.sourceforge.net/project/rseqc/RSeQC-3.0.1.tar.gz
tar zxf RSeQC-3.0.1.tar.gz
rm RSeQC-3.0.1.tar.gz

#  Allow fairly relaxed permissions, but protect against accidental changes to
#  the conda environment
chmod 775 -R .
chmod 555 -R rseqc_env

## Ignore all downloaded/installed files
echo "rseqc_env" > .gitignore
echo "RSeQC-3.0.1*" >> .gitignore

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

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

Thu Jul  6 04:38:37 PM EDT 2023
User: neagles
Hostname: compute-111.cm.cluster
```

