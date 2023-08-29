# Installation

```bash
## Commands used for installing the software
wget https://github.com/gpertea/gffread/releases/download/v0.12.7/gffread-0.12.7.Linux_x86_64.tar.gz
tar -xzf gffread-0.12.7.Linux_x86_64.tar.gz
rm gffread-0.12.7.Linux_x86_64.tar.gz

chmod -R 775 .

## Ignore all downloaded/installed files
echo "gffread-0.12.7.Linux_x86_64" > .gitignore

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
  1) JHPCE_tools/3.0   2) htslib/1.18

 

$ date
Tue Aug 29 03:15:54 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
