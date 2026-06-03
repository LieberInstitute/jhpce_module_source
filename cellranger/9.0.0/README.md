# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-9.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-9.0.0.tar.gz?Expires=1736477162&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=Bq1r91B9j9AfUZ7zZdz6gQ-US8v56IyiwsfYRl62Y96azK9vi8vbAuBLl3s~td6ONAOezYWWozotkd~eLE-oxwTBHWM~CmVo9DC9l8yVvUXssGZj4rmNdPhZuV6vZm0Dby5Lg25CA4GJjS9JiHd5bdK5sl5I2xKbZZrsnuTpFOrPN0sMh~Txq8jIfT3B3C7C02s5k5~X5xI7Q0IFLNkflOL3Xgr3nXIdgJVv7S3mjCkSPsUBMvwODPFHxw6S-Lqs7aGQOIOoGzqF~LtxNpkmnwoGY09z4Dr3BJ6~394XOlcV20rz8CB6F5UmJSb4WkxoCM2QYv2WwpO4VCIUQzl9dg__"
tar -xzf cellranger-9.0.0.tar.gz
rm cellranger-9.0.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-9.0.0" > .gitignore
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
Thu Jan  9 11:26:21 AM EST 2025
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-156.cm.cluster
```
