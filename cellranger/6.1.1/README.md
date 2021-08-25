# Installation

```bash
## Commands used for installing the software
wget -O cellranger-6.1.1.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-6.1.1.tar.gz?Expires=1629954851&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci02LjEuMS50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2Mjk5NTQ4NTF9fX1dfQ__&Signature=CJ0fgO8VTcj0jecJ4xuhc7uSwXQikYkv364tW78NDLCbc4fdAA0-RiRh5n7ce7jCGTPuy~jWOzuEIraH1PtuIo3JbFYf3MYBmHC2xvt2EjfM6GzjPMQ~44OyVQaHpBb~Y6Qc4Pa1lNgT3hHgqFqwdnFQCY-12kD-jXMZAsgzghboaQ5xOzxr3mxDsaYq1FHxRevJyiYb9PNMuaEFhrDnjz9b6IgI5tSVU1iTJWxP8Tec41SMZk5HtENfNUvs2bZ0oOWjOriDjCLZQvreR8epd1n4~G~rrZwBlFSWFQP8PLP3wrP7cibqml5FyzJr0hUYRdauj9C2F8hUV6P6YoaQSQ__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzvf cellranger-6.1.1.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcl01/ajaffe/data/lab/singleCell/cellranger_reference/.

## Ignore all downloaded/installed files
echo "cellranger-6.1.1*" >> .gitignore

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
  1) matlab/R2019a     5) gcc/4.4.7
  2) stata/16          6) COMMUNITY_CENTOS7_DEFAULT_ENV
  3) JHPCE_tools/1.0   7) JHPCE_CENTOS7_DEFAULT_ENV
  4) sge/8.1.9


$ date
Wed Aug 25 13:18:29 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-119.cm.cluster
```
