# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
wget -O spaceranger-1.3.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-1.3.0.tar.gz?Expires=1623389938&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMS4zLjAudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjIzMzg5OTM4fX19XX0_&Signature=MpyeZB-l3KAXIEcFAwR9lXWoddOz6zG2vSXLK9yhVQ2MKvmqAve-DY0Txw9q3TjQJe5uO-0Lo~NcGuMf5zLkHWtZWJ7DNdcx0PKA8Ddr23OStEHXfuVzbrZbl33q~NYoS17HP-E5R75l4awBvNLY7U6q~xEBDRPcxAyF8S5ete7ukBUNdW2qPgw2ytGGPwH93GSdNTo2sUfNaRpcNP3jYElE1oNyVO9GasaZxG-YJw3jSQphEpNSzgpOdYagU2Cw7io2X6eBxS8uAPtbQ5mDYUnG2fSUOiDhiH-FX4fAmoXU5ZY4hfAn-S-xsQSRZkKtq1gDi5M-6TNvC2u~tb21Rg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-1.3.0.tar.gz
rm spaceranger-1.3.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-1.3.0" >> .gitignore

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
Thu Jun 10 13:46:04 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-065.cm.cluster
```
