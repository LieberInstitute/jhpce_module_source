# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o xeniumranger-4.0.0.tar.xz "https://cf.10xgenomics.com/releases/xeniumranger/xeniumranger-4.0.0.tar.xz?Expires=1776398387&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=ls7c4BGMxPRHrCWb95eBJ4TKXyw-JEgOtnWdi8T53a1uNdk18zP0Qr0SxQ6qm~vo5yvyZsJ0qDXOM54pvxT685UCRZrz1nDRk13XCDF5JOkp7rgoHq2gAPrYjBGzg-K05FDyR9wNuovkXo0LjDVLYBlVsQK4tQQ1twM7qye2vZH8-FjFQJItDZQaDpVestnVJeHLVPIIixqIketnxOMhfl8pYpzWFwQK22EF8AMi6XK~LUFp2LhF2zchT7jXbBOdQ6gVRG7Tb0-ddxDI3T3c25xPfSFaDo9Wwlxyg96rNquQJ22HcsXg4W5ziRS8P0bPibLQPiSQCT48FOS9idIjwA__"
tar -xvf xeniumranger-4.0.0.tar.xz
rm xeniumranger-4.0.0.tar.xz
mv xeniumranger-xenium4.0 xeniumranger-4.0.0

## Ignore all downloaded/installed files
echo "xeniumranger-4.0.0" > .gitignore

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
Thu Apr 16 01:53:00 PM EDT 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: jhpce01.cm.cluster

```
