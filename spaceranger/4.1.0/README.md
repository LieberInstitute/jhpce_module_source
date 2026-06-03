# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-4.1.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-4.1.0.tar.gz?Expires=1780541687&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=J4S6bGzKdUPkwCa3iCeZxjezFvwHmeReksJqASnS2gHcYDHKsq0NzRIdaVOK4lqYmKSKzXWB-p0lvSnPHLwy6h62MKoPERbQnZw-5sQDuJ6seBkPzNYSDMGd91-wBFc~DpTsJodC2HOyY9oYbaywLF675rkdIG8cXoP5SatN83Lqam488-ld04Ad9ZKp3bdJJQO4QdwG7~G8I4VJkeeveNAcuQKSpT0Klm-bojNAfkRyKuTQ0Qy7~FRea3jnnkrlkFr1ArMKsKcxApi3UAbQp2yIFJp-hvoUB7Iswp8iUMCOBLRpu2QW0gclc-tkIUJK5H-VYk2Y3mQZDGYCBm4pOw__"
tar -xzf spaceranger-4.1.0.tar.gz
rm spaceranger-4.1.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-4.1.0" > .gitignore

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
Wed Jun  3 11:17:04 AM EDT 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-120.cm.cluster
```
