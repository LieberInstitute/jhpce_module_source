# Installation

```bash
## Commands used for installing the software

#  Build from source
wget https://github.com/DaehwanKimLab/hisat2/archive/v2.2.1.tar.gz
tar -xzf v2.2.1.tar.gz
cd hisat2-2.2.1
make
cd ..
rm v2.2.1.tar.gz

## Ignore all downloaded/installed files
echo "hisat2-2.2.1/*" >> .gitignore

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
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Thu Jun 29 03:05:22 PM EDT 2023
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
