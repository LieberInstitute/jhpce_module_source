# Installation

```bash
## Commands used for installing the software
wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip
unzip Trimmomatic-0.36.zip
chmod -R 755 Trimmomatic-0.36

## Might help?
ln -s /jhpce/shared/jhpce/libd/Trimmomatic/0.36/Trimmomatic-0.36/trimmomatic-0.36.jar trimmomatic.jar

## Ignore all downloaded/installed files
cat <<EOT>> .gitignore
Trimmomatic-0.36*
EOT

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
  1) JHPCE_DEFAULT_ENV   4) JHPCE_tools/1.0         7) conda_R/3.5
  2) matlab/R2017b       5) COMMUNITY_DEFAULT_ENV   8) gcc/4.4.7
  3) stata/15            6) sge/2011.11p1

$ date
Wed Oct 24 10:01:23 EDT 2018

$ echo "User: ${USER}"
User: eburke

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-045

```
