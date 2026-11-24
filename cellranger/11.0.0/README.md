# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-11.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-11.0.0.tar.gz?Expires=1795587295&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=Bn0BakJaF~EFDRaeGqmZH0yW-bU03WHjIxl0vqBYxscqEdHMKJE8nvnOzgynXnEZ~z3nvtwVhz9Yww2-zcmHX3NT3b9GX~miIzR3ENaptLJ02p2F0TcnZE81MWzVL8-MGaJ-QJpEEW4P9uVwEjh~e9u62Jli-42Cv9EQ0sE67OiAzagFS4Bm4eF~gLoRYKDBVdbTUUdylYviSWnQXYZXGzMRL87dcU65aVjycJ-6PwnFGuvtS-65eUxSvpqTvkN0GcscPkHHqQrPaGImrm4MPk8AwNjZ2mXJgV1u0Vx-KKInhorGuRGsn9DEcdGZQfYzidWC-E6Q1eQvlGA5Ckg6yA__"
tar -xzf cellranger-11.0.0.tar.gz
rm cellranger-11.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-11.0.0" > .gitignore
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
Tue Nov 24 01:32:20 PM EST 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: transfer-01.cm.cluster
```
