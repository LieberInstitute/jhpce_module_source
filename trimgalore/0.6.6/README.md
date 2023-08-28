# Installation

```bash
## Commands used for installing the software
wget https://github.com/FelixKrueger/TrimGalore/archive/refs/tags/0.6.6.tar.gz
tar -xzf 0.6.6.tar.gz
rm 0.6.6.tar.gz

# Install cutadapt 4.0 with conda
source /jhpce/shared/jhpce/core/conda/miniconda3-23.3.1/etc/profile.d/conda.sh
conda create -y -p ./cutadapt_env cutadapt==4.0

## Ignore all downloaded/installed files
echo "TrimGalore-0.6.6" > .gitignore
echo "cutadapt_env" >> .gitignore

chmod -R 775 .

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
Mon Aug 28 02:16:26 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
