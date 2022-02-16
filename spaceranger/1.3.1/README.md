# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-1.3.1.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-1.3.1.tar.gz?Expires=1645078530&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvc3BhdGlhbC1leHAvc3BhY2VyYW5nZXItMS4zLjEudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjQ1MDc4NTMwfX19XX0_&Signature=kCvcVAzlr-HzUBkiUggmYKpWUg-2-AVKJs7beFOoT-o37Wt-i1U5bWq05J48KhzZiy2V-ORwqodZ7-Q6vpGtmzSoyvIJ-2fJ71cAX0wRX9oGy0ORQAUxH-RgRhBCJf-Q-LSum2isOW5fM2acnVu2IrZgXgZIF44KnS0T97QC48RQuqfkqdSLKl8orFvixXDq45OAR5KFtIk2PSSDL33zFZmzupgT1V-qCm3ojzxAd17XiF9H6EgA88USGRvG5OY5IB8XCJA-023lMdmfNH4oSLey4jSiq6DUfQj6Dtg-cwnlCHow7FxfVPJGL2M0kVVaNS0QTxhDONKKiVLWTmqvgA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"

tar -xzf spaceranger-1.3.1.tar.gz
rm spaceranger-1.3.1.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-1.3.1" >> .gitignore

chmod -R 775 /jhpce/shared/jhpce/libd/spaceranger/1.3.1

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
Wed Feb 16 13:21:26 EST 2022

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-119.cm.cluster
```
