# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-3.1.3.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-3.1.3.tar.gz?Expires=1748405765&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=mUFnOEtbujrfie4ZaX9gGdTPENZlLKzYHa4qCxV6GUy3soKoN7H5gtZFUbxCtttaNtxwgIf-Dzp~~8TZZxyLfeoIH9TPPkyE6ymuLZZaVg8L~hdJ~JDEqXymOpPaOCHB7eETCeE46TGjXTXCujYyOrAanNJzoyobgpfyjh-zGVOpvbXL3W59xmfL6r3fBNo5zCeFkxoEJWOjyG3LSGukJ8NOZekx6qBlpMMCO5dutA7GLv3IzT4-iv1-AOGTx4h2rb~hlJqZyJHr~jJWyCwXn6PHy03UzzKl0VJON3u4coyXcDX7yA1~busKaMHiGCmcMmeplaJfvWwYmvEOCZ9HoA__"
tar -xzvf spaceranger-3.1.3.tar.gz
rm spaceranger-3.1.3.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-3.1.3" > .gitignore

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
Thu Nov 21 11:00:43 AM EST 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-161.cm.cluster
```
