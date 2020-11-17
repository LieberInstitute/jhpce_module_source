# Installation

```bash
## Commands used for installing the software
wget -O cellranger-4.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-4.0.0.tar.gz?Expires=1605673028&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci00LjAuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2MDU2NzMwMjh9fX1dfQ__&Signature=IitlEJpvD~P1GSO9pTIySSakKVFrTPpx1H0xgOiN4JID4q2XPv2HajZW9HrEflc8bc7N99gB0WmPNtv33RJahvCYh67ZYWluEp~4RKv-18N2xiiXbLZeeZFTZjexHxERjmAMhSCO4RepKsWZL25-Rp5MDDPTuhzHrWGbE2OOBOziRIMbg1fIUYHyInAkcK~cb8VVeN27xOKWq8~XsigJYLQK3wdAeBmMON6e-wLf9BJ3T3HyfMhASATVtBCqc4smpk3q2ZZ7jq8R-t3iM9KBJQWF1wua0DSlz6Elyx5J8JHjrfQgKLnM4jVZ-6~vodnMD1-ocHubPbUfURpNFnuKZw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzvf cellranger-4.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcl01/ajaffe/data/lab/singleCell/cellranger_reference/.

## Ignore all downloaded/installed files
echo "cellranger-4.0.0*" >> .gitignore

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
  1) matlab/R2019a     6) COMMUNITY_CENTOS7_DEFAULT_ENV
  2) stata/16          7) JHPCE_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   8) conda/3-4.6.14
  4) sge/8.1.9         9) conda_R/4.0
  5) gcc/4.4.7

$ date
Tue Nov 17 14:57:21 EST 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
