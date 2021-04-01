# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
wget -O spaceranger-1.2.2.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-1.2.2.tar.gz?Expires=1617350718&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMS4yLjIudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjE3MzUwNzE4fX19XX0_&Signature=DZFZNTISLrzbEdeZWEAEQ2Son~ESbqCRPuyT~h~D8bZLub2onTgK4Gpbl1WrzLl6uE0lSWZwfSvUHXeWm0qherbN-JKsdA3kIzj-y-lfEya4uP8vO3zazCybM12wOi1tpCjxP6rhFsJU2kyfPOrsCHVC0kJ0s5uXqTcZrYRiAsgsAUFWO5Sd2LyUMgJqHjyXWLkhYSbrMcRG8tLyJ~9JQvBpmB~Bs1U1fkh~lB0O~fuAbiju0Ot2kRR2lV7XgnwJu5Iq07sixdo09Sb0Jvld-h8Uga286Bjb205AGM9h6wmyx49GLKbcM3P5lYPF-yxDL90UWTmvgJSITJLVPmqFRA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-1.2.2.tar.gz
rm spaceranger-1.2.2.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-1.2.2" >> .gitignore

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
Thu Apr  1 16:12:04 EDT 2021

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
