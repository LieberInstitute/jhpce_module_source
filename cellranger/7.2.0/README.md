# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-7.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-7.0.0.tar.gz?Expires=1653542926&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci03LjAuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2NTM1NDI5MjZ9fX1dfQ__&Signature=EVttxJtsFhyK582kewiosKeA~thsZ8kPtWwKW7lHcaxU7rokmdJvjiMGYz3qD09Iwexqv-ip6QoVHQzoQuTTZQRCRqkHv4tySGSE42X2QyIS8pSOpWwO4NQNCx2hUs4zYbqdkT-mC7NG4lPttAaMJNilbeNg0~-BfMh-KzeGskTDI8Ze0FDbZNKB9bXV3pRYksCUPcZ3zNrJ4sgvOVUCbiMQXTrLdOJNSGzHHD3YuRVEY6so07hzYQQe1pzGji5O38jPPKgYTfBpLZxUmXnjjOrnC5r0SOzCPE662dN2aeQuoJo-Jfz0i4MSPN65X19L~zArFtCngoTLN7nW6Y1IaQ__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
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
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17          5) gcc/4.4.7
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV

$ date
Wed May 25 13:35:22 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-105.cm.cluster
```
