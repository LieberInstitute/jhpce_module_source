# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-3.1.1.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-3.1.1.tar.gz?Expires=1727749927&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=MYyOJ7NBVMC8WXc5~GmmkAQypTd8e7HQ6ppBgxeer0pWZluF8NdWwRs3Hs18lBEh4swH3npI6~xvAXgpYCuIiYChjRbge-cMFuQ4lic~TLixSNC6s4MlBfAR9vrxw~IP03rQ4pbqblE~-wOr5Vmfk25lxO-l4Jmqy2hGI-rN2EXtVnka7DqdOpKGxWA5M7frrIGk4kU5-x9NoFbB5oklEC8i~qz5xiQVjESONcfSnDDn3bAcs5NL~QJXd5lSm1wdZ~3D0dHQwicMvo8AE0S8AhQWoNnWTDWw3fcsnkS-k1XbKBGvpNyeK-h5JGihD7VOqagZLJ-bNTVSNMZ~6UDejw__"
tar -xzvf spaceranger-3.1.1.tar.gz
rm spaceranger-3.1.1.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-3.1.1" > .gitignore

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
Mon Sep 30 11:31:03 AM EDT 2024

$ echo "User: ${USER}"
User: rmiller

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-169.cm.cluster
```
