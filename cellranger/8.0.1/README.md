# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-8.0.1.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-8.0.1.tar.gz?Expires=1729826286&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=NEDneyCsgwNbl7-d5rYnv77NveZxVXvBUdiDk6Po7EsaRGuqQQNGRXyEOEh3dwgy3z0B3rMPjHb8dof5i4EraOlfdfIy~qzC0n2VsS01xmw7iAVTsNyFvVj5bFKBIZa47xOEJRg7hwj3aUL1E2pgzF2zLIOlARcwvw~w8CGydz2PrVZBOBXt9yAkqgFUwuNZaDaMB7BmRwD75x14ZhfbzS6qHQQw40zmpSxgWm2h8mbBAEK6dwu7CMdfnT8f0rVuAlYRgkVQyvKLgNWgxDkB6VbGyVMyoflrklR98a-VAUd5kirV1~XnP0kBxmAyPpzXgB0y0zGaddacrZqgPUN~sg__"
tar -xzf cellranger-8.0.1.tar.gz
rm cellranger-8.0.1.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-8.0.1" > .gitignore
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
Thu Oct 24 11:20:25 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-162.cm.cluster
```
