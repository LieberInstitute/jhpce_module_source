# Installation

```bash
## Commands used for installing the software
wget https://github.com/GregoryFaust/samblaster/releases/download/v.0.1.26/samblaster-v.0.1.26.tar.gz
tar -xzf samblaster-v.0.1.26.tar.gz
rm samblaster-v.0.1.26.tar.gz
cd samblaster-v.0.1.26
make
cd ..

chmod 775 -R .

## Ignore all downloaded/installed files
echo "samblaster-v.0.1.26" > .gitignore

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
Mon Aug 28 02:22:26 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
