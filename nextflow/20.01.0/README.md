# Installation

```bash
## Commands used for installing the software

wget https://github.com/nextflow-io/nextflow/archive/refs/tags/v20.01.0.tar.gz
tar -xzf v20.01.0.tar.gz
rm v20.01.0.tar.gz

## Ignore all downloaded/installed files
echo "nextflow-20.01.0" > .gitignore

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
Tue Sep 12 05:03:32 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-116
```
