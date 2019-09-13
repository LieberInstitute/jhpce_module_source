# Installation

```bash
## Commands used for installing the software
wget https://sourceforge.net/projects/subread/files/subread-2.0.0/subread-2.0.0-Linux-x86_64.tar.gz/download
tar xzvf download
chmod -R 755 subread-2.0.0-Linux-x86_64

## Ignore all downloaded/installed files
cat <<EOT>> .gitignore
subread-2.0.0*
download
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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git-status-size/github  11) rmate/1.5.9     13) conda_R/3.6
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git/2.17.0                 10) ruby/2.6.4p104          12) conda/3-4.6.14



$ date
Fri Sep 13 11:00:32 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-065.cm.cluster

```
