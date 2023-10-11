# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-7.2.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-7.2.0.tar.gz?Expires=1697078943&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=cVXVB0jEznMzTAMeWYb9mE42pI~SVzl4e3Ownbo5CvjKvYpN1K47XOzxc40UL1BPt3ebgquvapceMYJQZ3uDJmvQAItTn~uKhe1pyOK2Vr3QzsoM2ZB8EydWSv-GvBWcFtrpjzmPmCAhoGZsiykvWr3B11-0PyZ6WwgmU9EqftejoN4wjLIPEBaWoM-wv7cEfk-iO3i93NB4UIXJinNMyEwCfQa9slIcjWudw6KCRpAc0GleFjvzRB8Ab9e1hKphTq574OD2vQnmsNpT-ZCSdnzoljO4SwYrCU~qXz86W7Ql8uYlZpu1L0JvdoaDDMwGfUdwMk5iSjDpFnFa~PXFTQ__"
tar -xzf cellranger-7.2.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-7.2.0*" > .gitignore
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
Wed Oct 11 11:06:59 AM EDT 2023

$ echo "User: ${USER}"
User: rmiller

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-092.cm.cluster
```
