# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-2.0.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-2.0.0.tar.gz?Expires=1671084450&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMi4wLjAudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjcxMDg0NDUwfX19XX0_&Signature=bAcWye0w2NlEdmn12WEwZtzbtdnF3WOdRZEV0hDi7pDla~DjPqt3RXxunh702PUmLk-uo78OVIpiUKqBP-1B3wUa0bbkhahTWA91LwyKzIaq7gCnEP2r5xvNyby~NNv3E8C3QcTJ3Wd4X1u8jIpSUoZmBdln6bks3Xwpa-gijLCmm3ECs2jCyB3oSTpsry9Wlwyuss86ho6jUs~hH1aKaXrT4n4Cpnxmaifm-HdEaMvyT8ImgiIwMS4aRhbyDhEsspyPOXhES7FxhhxfmIAdQJwQoCRpkxhcbj9UPBlxKv5LR9ehvejV7RlvLN9KT8h4bgZhd0ekocrqOZ22eMP1QA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-2.0.0.tar.gz
rm spaceranger-2.0.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-2.0.0" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/spaceranger/2.0.0

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV
 

$ date
Wed Dec 14 13:24:40 EST 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-099.cm.cluster
```
