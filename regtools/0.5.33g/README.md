# Installation

```bash
## Commands used for installing the software
wget https://github.com/gpertea/regtools/archive/refs/tags/0.5.33g.tar.gz
tar -xf 0.5.33g.tar.gz
cd regtools-0.5.33g
mkdir build
cd build
cmake ..
make
cd ../..
chmod 775 -R .

## Ignore all downloaded/installed files
echo "regtools-0.5.33g" > .gitignore
echo "0.5.33g.tar.gz" >> .gitignore

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
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Thu Jul  6 03:50:57 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
