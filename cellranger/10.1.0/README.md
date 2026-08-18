# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-10.1.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-10.1.0.tar.gz?Expires=1787102738&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=NHhFAAqz5~LpdknI76PCqX3vQxc-kX986uH37hxWcPP5enVaNtkJMTW21YY248V27w4zUfFlSbC570Pj1NOV9Bd4tSltJtv9CkITs513PjVtWpgeN0sEFxz36HcXKxZ1KKMzNAqQvpbPNd9xT1eVboEUESPUpU~Rw~KqlS3mSVOpo1vDmzB2d2DZ9XeLKu4fCCPTHs5SCqM~dZ2OVbP7Jp8NJ5xFkACsyHt3bOAkZDUwDYxks8hz1giFksM9FjJ7EsAMp6ndg7aQL1cgnFO4tH6YdIMpR3NZt6nY9cuv8TzcI8OyRrymPp6kWhTYMg93A073C1CDKR2QusbZDh-NOQ__"
tar -xzf cellranger-10.1.0.tar.gz
rm cellranger-10.1.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-10.1.0" > .gitignore
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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Tue Aug 18 09:34:46 AM EDT 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: jhpce01.cm.cluster
```
