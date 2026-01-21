# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-10.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-10.0.0.tar.gz?Expires=1769047614&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=bB5gqdjaIzicUsfqG2hbz2pcohaDRTRdwCGWNOL9QhkG3wZ1MJnDU4ytoxr5dSGvUbvRB9KYuTHrd3c1YEvxul2JWYyMcMzW52zLo7yLI3w-y0pTTs0s5d3ag1lyebOo1ZpFIl-pzBB9ANAtwDHl5aWOWEASVx8o-CXn-eVZqAHPbx86dLMFQfuLOQZYu1hL13ThFDeOxd73dvIiYX5oz414VLHz24FbmsSk9W3VLG184POyHoHcbg3b9KCQloUjXtzEVIEkzThHOX1b6g3fOOFqdbfoUFk4uI5BgMwLyhf5-kmjy3v1WQzoEJefRW~HGRjzp9-ZJ8V~Lpp0Y6WPqQ__"
tar -xzf cellranger-10.0.0.tar.gz
rm cellranger-10.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-10.0.0" > .gitignore
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
Wed Jan 21 09:16:10 AM EST 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: jhpce01.cm.cluster
```
