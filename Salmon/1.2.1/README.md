# Installation

```bash
## Commands used for installing the software
wget https://github.com/COMBINE-lab/salmon/releases/download/v1.2.1/salmon-1.2.1_linux_x86_64.tar.gz
tar xzvf salmon-1.2.1_*.tar.gz
rm salmon-1.2.1_*.tar.gz
chmod -R 775 .

## Ignore all downloaded/installed files
echo "salmon-latest_linux_x86_64" > .gitignore

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
Fri Jun 30 10:22:01 AM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
