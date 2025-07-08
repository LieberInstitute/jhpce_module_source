# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o xeniumranger-3.1.1.tar.gz "https://cf.10xgenomics.com/releases/xeniumranger/xeniumranger-3.1.1.tar.gz?Expires=1752041971&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=C7UkA3Otv56OH1g8-jCH0rbkS-cCpckFqsWWkEuKPMLJrc0fOiy2JdO9yL0QWSmWkzDKWmFF7hkVpwQK-nUqnmhORSq9ddDbcjCC2UBcDK8lC~GevLvO2EDYR07~ZU5V9tAZL7XG1fSgeS6md7KvTpoe2HLcM~wDSCuH-TaBpSAApZoxid31DZUjYy6cRfPIwlS8MidNjNSSwlEuNfJevKR5-Y1OK1jU7PNb6WZhMo~xonXT93tfVkVRvW8L-3QKanAaO01ju6PHneStz1XIjcpIq8f-u8dXE3wLVXkv2KWCeoa2uEoJUiGop~H4sjjrsU3xwHEzOKux-jr0ME298A__"
tar -xzf xeniumranger-3.1.1.tar.gz
rm xeniumranger-3.1.1.tar.gz
mv xeniumranger-xenium3.1 xeniumranger-3.1.1

## Ignore all downloaded/installed files
echo "xeniumranger-3.1.1" > .gitignore

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
Tue Jul  8 02:55:50 PM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-160.cm.cluster

```
