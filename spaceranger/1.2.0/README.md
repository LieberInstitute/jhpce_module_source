# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
wget -O spaceranger-1.2.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-1.2.0.tar.gz?Expires=1605688275&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMS4yLjAudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjA1Njg4Mjc1fX19XX0_&Signature=OCwqBLgHF1C61F5OfU0RwN9U61tnoSvo4wrpXtpspwIttFHo6OmUhV42bC8ETrLTJGtXwYRKx2tTUVeOZ9OVwIhB9X-c7WIEe1YPHcPsP6qewxzcMzkCdZNKo204CVLkdt41XIVl8L3kLOOL1he7XCwFIzer9IpouqSmOoyted7HiZE65kLnfBfA71Ap-5qYKBhH4rsSwX9dzC6UfXTMEIrfcxIJUrlwYOWRw5Qnbhes38ciOCgaD4q7IAX6wAyUH-pv8AQCqG9lGRkHXV2g1ElsjKc24GAVYXozWgS9~F1PnYhjH5ZqzkYb2nVMb~z8T4n7hhijh8igGtjsvHLLJg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-1.2.0.tar.gz
rm spaceranger-1.2.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-1.2.0" >> .gitignore

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
  4) sge/8.1.9         8) cellranger/4.0.0
  
$ date
Tue Nov 17 15:40:14 EST 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-116.cm.cluster
```
