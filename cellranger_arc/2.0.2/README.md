# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-arc-2.0.2.tar.gz "https://cf.10xgenomics.com/releases/cell-arc/cellranger-arc-2.0.2.tar.gz?Expires=1663730883&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1hcmMvY2VsbHJhbmdlci1hcmMtMi4wLjIudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjYzNzMwODgzfX19XX0_&Signature=CnZe7awGSEVeyzYH5Qy9p4tJpxBOzf~D6~Rx64QqkuXICYXrBRbR1aPP-4bKVr3NRAHSdxbydlz-X57uwF0WxUqr~ptfD2oudyPmwJ6LmScmpLTZeTPnOUDP5E6vgrLFYHQ3Kg2vwrGoPlnRPrNmckqIEm5O5qWXmCm27Jl6-FzpVbwcdvCdGxD8znOpxewKST6qOQkc0zabOnLru2CsEbDIWx24wvlg7a2zpedTjEL4xRjvaG5lxGQK9EzzGgDcMMedZrCbO7xiQT-Z5nKaxuYSXFCsxPFniOpqHR0BbwiWip6nD4CjccJPUzOssNH6lu573TqVbnMinYoWWnms~g__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzf cellranger-arc-2.0.2.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-arc-2.0.2*" > .gitignore
chmod -R 775 /jhpce/shared/jhpce/libd/cellranger_arc

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
Tue Sep 20 11:38:36 EDT 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-141.cm.cluster
```
