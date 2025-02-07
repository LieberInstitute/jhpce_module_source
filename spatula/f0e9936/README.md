# Installation

```bash
## Commands used for installing the software

## clone the repository (at a time where the latest commit was f0e9936)
git clone --recursive https://github.com/seqscope/spatula.git
cd spatula

## build the submodules
cd submodules
sh -x build.sh
cd ..

## build spatula
mkdir build
cd build
cmake ..
make
cd ../..

## Ignore all downloaded/installed files
echo "spatula" > .gitignore

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
echo "Node name: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Fri Feb  7 03:10:34 PM EST 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${HOSTNAME}"
Node name: compute-152.cm.cluster
```
