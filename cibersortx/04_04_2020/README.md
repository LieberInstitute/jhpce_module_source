# Installation

```bash
## Commands used for installing the software

module load singularity/3.11.4
singularity pull docker://cibersortx/fractions # no version name is provided

## Ignore all downloaded/installed files
echo "fractions_latest.sif" > .gitignore

#   Set loose permissions
chmod 775 -R ..

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) singularity/3.11.4

 

$ date
Thu Feb  8 01:47:31 PM EST 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-124.cm.cluster
```
