# Installation

```bash
## Commands used for installing the software

wget Arioc.x.143.zip https://github.com/RWilton/Arioc/releases/download/v1.43/Arioc.x.143.zip
unzip Arioc.x.143.zip
rm Arioc.x.143.zip

cd src
make clean
make AriocE
make AriocU
make AriocP
cd ..

## Ignore all downloaded/installed files
echo "src" > .gitignore
echo "bin" >> .gitignore

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
echo "Hostname: ${HOSTNAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Wed Apr 23 03:13:51 PM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-171.cm.cluster
```
