# Installation

```bash
## Commands used for installing the software
wget -O cellranger-6.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-6.0.0.tar.gz?Expires=1615963026&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci02LjAuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2MTU5NjMwMjZ9fX1dfQ__&Signature=GP~E2VWLYJGMKM7IMYgPx5A4423r-NxgRT8Bu68TmraqWjR2OajM3gCB1~U58cn1jIU43OqbY4unDYiCDxz3ms6qxjav5hMP9ZgmIC-jEACts1l3cUaAGxi6ZrpWf36fzquRcnSktmrZmv34SVsnJRq6McBEfw0KtykNrkEOH8CLb~fxGPYV7jrzwt4yygOpLopKT5LJssnoglNItShrdVnYeER3~9CV2QZ~-IPPk~fakm2iv8DJgzPsoOlvkTxQ2~zigi5~wravxq3ua8a6Jcy7y2C-j8RArPbayQxXNYYUanGsHl4FY74z-95i88~lqZA736yOKzVIVbo756hz-A__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzvf cellranger-6.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcl01/ajaffe/data/lab/singleCell/cellranger_reference/.

## Ignore all downloaded/installed files
echo "cellranger-6.0.0*" >> .gitignore

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
  3) JHPCE_tools/1.0   8) samtools/1.10
  4) sge/8.1.9         9) plink/1.90b6.6
  5) gcc/4.4.7


$ date
Tue Mar 16 14:47:45 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
