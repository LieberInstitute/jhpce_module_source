# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-9.0.1.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-9.0.1.tar.gz?Expires=1748407496&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=ndox6MGZq-5b0FIXxkG--wDuKyk-swZPntoH--~H2v25LBVZ-JImCWKTBwpBjT4CT2cB4dVAPajgYn-WMooYFVdKodStgmlTChPF7DazeofIdW0g~jqw0rYdFKWqJmhkXmFoX4rIF~UBqPK8jLD2w9ZleFilFcY7Z0WmkqW4O-Sa6xKEPbp6RawuvY88SlcmmHvnPhqrYVi3TTHtW9ACgcaimntgqghcUg1sDdXKLKZRMd7mucNC0jFJAazLnSQxfOElmAtWTEQuK4siP1rYp2tlkN-YbZVnp-or-YuyV5QZYmwivVdu1UgsU~fAVKu8Y4oDHaUDE4AUF9037s750g__"
tar -xzf cellranger-9.0.1.tar.gz
rm cellranger-9.0.1.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-9.0.1" > .gitignore
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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) ruby/3.2.2   4) rmate/1.5.10

 

$ date
Tue May 27 12:51:37 PM EDT 2025
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-121.cm.cluster
```
