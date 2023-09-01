# Installation

```bash
## Commands used for installing the software
wget https://s3.amazonaws.com/plink2-assets/alpha4/plink2_linux_x86_64_20230829.zip
unzip plink2_linux_x86_64_20230829.zip
rm plink2_linux_x86_64_20230829.zip

## Ignore all downloaded/installed files
echo "plink2" > .gitignore

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
  1) JHPCE_tools/3.0   2) conda/3-23.3.1

 

$ date
Fri Sep  1 03:17:22 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
