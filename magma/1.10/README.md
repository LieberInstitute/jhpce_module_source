# Installation

```bash
## Commands used for installing the software
curl -O https://ctg.cncr.nl/software/MAGMA/prog/magma_v1.10_static.zip
unzip magma_v1.10_static.zip
rm magma_v1.10_static.zip

echo "magma*" > .gitignore
echo "README" >> .gitignore
echo "CHANGELOG" >> .gitignore
echo "manual*.pdf" >> .gitignore
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
  1) JHPCE_tools/3.0   2) conda/3-23.3.1

 

$ date
Thu Aug 31 11:45:36 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-098
```
