# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-7.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-7.0.0.tar.gz?Expires=1652929484&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci03LjAuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2NTI5Mjk0ODR9fX1dfQ__&Signature=IAtiXAMSjUDmNjGOFLE3N2EwxQArvom3QAMWbcGDj4mVqT~v3GYPcozQYAbu8mtpP5eB8CzW5dn8nSE4EpIWrZLFAqme2sz7irCznvMzXsSUjeeIEST3xL03qQ3s78osaGI7-W2gjM21CW0e1KhIsUHA0Trwpw8nAfuyipa5tgTAi3TsOhI8MlhJq67IDt3wdzBAVCPrlhEQtA9q49R8t4x8bRXssmOzjoTgZ4rVmtwQF~mcEMdav8uq9nJNxi3vUSg266iyxzRL69iJ4fJWPcRDH08FlWLZ57nEy727Mk9-IYJfvvnHp2qzoIz7qT44opyI4cm0cm~nbo3aZ4ptFw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzf cellranger-7.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-7.0.0*" > .gitignore
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
  1) matlab/R2019a   3) sas/9.4           5) sge/8.1.9   7) COMMUNITY_CENTOS7_DEFAULT_ENV
  2) stata/17        4) JHPCE_tools/1.0   6) gcc/4.4.7   8) JHPCE_CENTOS7_DEFAULT_ENV
$ date
Wed Aug 25 13:18:29 EDT 2021



$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-102.cm.cluster
```
