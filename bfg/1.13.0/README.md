# Installation

```bash
## Commands used for installing the software
wget https://search.maven.org/classic/remotecontent?filepath=com/madgag/bfg/1.13.0/bfg-1.13.0.jar
mv remotecontent?filepath=com%2Fmadgag%2Fbfg%2F1.13.0%2Fbfg-1.13.0.jar bfg.jar

## Ignore all downloaded/installed files
echo "bfg.jar" >> .gitignore

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
  1) matlab/R2019a   2) stata/16   3) JHPCE_tools/1.0   4) sge/8.1.9   5) gcc/4.4.7   6) COMMUNITY_CENTOS7_DEFAULT_ENV   7) JHPCE_CENTOS7_DEFAULT_ENV   8) git/2.17.0   9) ruby/2.6.4p104  10) rmate/1.5.9



$ date
Thu Aug 29 15:45:45 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-095.cm.cluster
```
