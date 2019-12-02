# Installation

```bash
wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.39.zip
unzip Trimmomatic-0.39.zip
chmod -R 755 Trimmomatic-0.39

## Might help?
ln -s /jhpce/shared/jhpce/libd/Trimmomatic/0.39/Trimmomatic-0.39/trimmomatic-0.39.jar trimmomatic.jar

## Ignore all downloaded/installed files
cat <<EOT>> .gitignore
Trimmomatic-0.39*
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
$ module list

Currently Loaded Modules:
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/16          5) gcc/4.4.7                       8) conda/3-4.6.14
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV   9) conda_R/3.6
  
$ date
Mon Dec  2 16:56:31 EST 2019

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-074.cm.cluster

```
