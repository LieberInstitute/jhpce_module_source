# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-atac-2.1.0.tar.gz "https://cf.10xgenomics.com/releases/cell-atac/cellranger-atac-2.1.0.tar.gz?Expires=1722498013&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1hdGFjL2NlbGxyYW5nZXItYXRhYy0yLjEuMC50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3MjI0OTgwMTN9fX1dfQ__&Signature=jtir8SvicWWvGEcABqDNv5iiH2TgVmp5pTu8jYnr1XwtnV7R~diTnN2zb06N-4kZZ~8z9NXWZjm7STl9jgSZvPKNaAranOch6wd6uj~MBKPBFWYsIq-ZVFt6yuDML8HUUzgLUhHGyCTpHGx7G4~S~AvQwogz9WsOafuHGscD3P5e01cjOuQ8cy-L3XbnBoPclKa~jMY6~fAawji0LTaRqsF7oqXBNRPKbv0WkrYngWEEP4RRpMJ-w6UKg4PDe0oLjTI99CNIPmfah6eFCLmJmTiHWvvPMM2cdnilMqWfjsumDJ4REwmeFh232UxRd7pRSyvGM1mFxHkiFwpoY6vbrg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzf cellranger-atac-2.1.0.tar.gz
rm cellranger-atac-2.1.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-atac-2.1.0" > .gitignore
chmod -R 775 ..

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
Wed Jul 31 03:44:14 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-116.cm.cluster
```
