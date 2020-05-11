# Installation

```bash
## Commands used for installing the software
mkdir qctool
cd qctool
hg clone -r beta https://gavinband@bitbucket.org/gavinband/qctool
./waf-1.5.18 configure
./waf-1.5.18
cd ..
chmod -R 775 qctool

## Ignore all downloaded/installed files
echo "qctool*" > .gitignore

## Version control files
git add .gitignore
chmod -R 775 README.md
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
```
