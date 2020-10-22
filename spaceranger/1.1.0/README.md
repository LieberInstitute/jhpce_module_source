# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
wget -O spaceranger-1.1.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-1.1.0.tar.gz?Expires=1602917794&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMS4xLjAudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjAyOTE3Nzk0fX19XX0_&Signature=Aq4rRO38XzTHSyYMNRYI5HGgenx9IHB6vT9xEFw~zeFVrbvNQxWxUCrWv0eWu0wB8uzjXhpGjquK8fh23F4HkPEuGrfsWYkaPjJsb7lqk2THUngQ7ZpuQ7W0I5zXz8KTPenObxBLWzjf~DLS2WJv00eirbeSmnpFJiUP9em45RorIoNpYHbKp2TpiC6lS3T~kYY4KWX3Wx-p4TtTxAz~aUpuZY~yxcrU7MQ74FZ9bF0FYtFk-JklIEXa9mSpGNOSvFMrFEZOvROJqn1t1zAf75emotjZoRm0gFZCE9hJh97voyX3LOnUpYyugmVJuGagG6DBZiHVmyZ89MJQ8S9Kgg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-1.1.0.tar.gz
rm spaceranger-1.1.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-1.1.0" >> .gitignore

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
  2) stata/16          5) gcc/4.4.7                       8) python/2.7.9
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV
  
$ date
Fri Oct 16 16:53:05 EDT 2020

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-113.cm.cluster
```
