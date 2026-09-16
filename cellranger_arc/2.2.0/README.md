# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-arc-2.2.0.tar.gz "https://cf.10xgenomics.com/releases/cell-arc/cellranger-arc-2.2.0.tar.gz?Expires=1789609176&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=fHcyHL9fWOufnzEgtMOEkzCG6p2hNsyhXY2042op6rPRBqeWHG-NvMkirwUIj2f6CwH~JKVf9pScOJrJGvjjRou3uowVilStsqARJVop3iSHBgY5AuSPlF5e1TsHX4sM27iBJeDv6ePM~sG9q-hLNm0~yPeGKC3IdPX62Rf24HWBpe5td1TnUolkQVluUlIurEt98Zkk5-Ta29~Y0Qq8W5~GEG7511MYD7eZg1KpD7d~xOfich8n0fJdgGOBnIudAGv70lXelf2j5kmjtkYTwTMMJygernWh9Ehof9EybF3e~Re~QrY8~~-PNP2q9TycUOj-ahRVDbxPNZ~dtAOJAA__"
tar -xzf cellranger-arc-2.2.0.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

# clean up directory and remove the tar ball
rm cellranger-arc-2.2.0.tar.gz

## Ignore all downloaded/installed files
echo "cellranger-arc-2.2.0*" > .gitignore
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
Wed Sep 16 09:48:07 AM EDT 2026
$ echo "User: ${USER}"
User: rmiller
$ echo "Hostname: ${HOSTNAME}"
Hostname: jhpce01.cm.cluster
```
