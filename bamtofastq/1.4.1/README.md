# Installation

```bash
## Commands used for installing the software
wget https://github.com/10XGenomics/bamtofastq/releases/download/v1.4.1/bamtofastq_linux
mv bamtofastq_linux bamtofastq

## Ignore all downloaded/installed files
echo "bamtofastq" > .gitignore

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
echo "Hostname: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Tue Feb 27 03:43:50 PM EST 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-153.cm.cluster
```
