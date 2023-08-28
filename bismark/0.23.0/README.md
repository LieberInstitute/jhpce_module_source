# Installation

```bash
## Commands used for installing the software
wget https://github.com/FelixKrueger/Bismark/archive/refs/tags/0.23.0.tar.gz
tar -xzf 0.23.0.tar.gz
rm 0.23.0.tar.gz

## Ignore all downloaded/installed files
echo "Bismark-0.23.0" > .gitignore

chmod 775 -R .

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
Mon Aug 28 12:26:09 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
