# Installation

```bash
## Commands used for installing the software
curl -O https://www.chg.ox.ac.uk/~gav/resources/qctool_v2.2.5-CentOS_Linux7.9-x86_64.tgz
tar -xzf qctool_v2.2.5-CentOS_Linux7.9-x86_64.tgz
rm qctool_v2.2.5-CentOS_Linux7.9-x86_64.tgz

## Ignore all downloaded/installed files
echo "qctool_v2.2.5-Ce-x86_64" > .gitignore

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
Thu Sep 19 04:45:23 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-163.cm.cluster
```
