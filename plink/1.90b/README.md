# Installation

```bash
## Commands used for installing the software
wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20230116.zip
unzip plink_linux*.zip
rm plink_linux*.zip toy.* LICENSE prettify

## Ignore all downloaded/installed files
echo "plink" > .gitignore

chmod 775 -R .
chmod 664 README.md

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

## copy paste the output from the previous commands below
```
Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

Sun Sep 24 11:44:37 AM EDT 2023
User: gpertea1
Node name: compute-150

```
