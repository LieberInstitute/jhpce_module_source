# Installation

```bash
## Commands used for installing the software
#   Note: this uses a temporary download link generated after entering some
#   information and agreeing to terms of use
curl -o cellranger-arc-2.0.2.tar.gz "https://cf.10xgenomics.com/releases/cell-arc/cellranger-arc-2.0.2.tar.gz?Expires=1690618330&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1hcmMvY2VsbHJhbmdlci1hcmMtMi4wLjIudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjkwNjE4MzMwfX19XX0_&Signature=aaDbOZHvlDy0Wbt9VmBstAlulzq5dthOkbTeIp-u9h5tFC38HUzAbx28E4Swxr9R~KsyDTIvE-iazJY4qDLclyV~1kdB~ysr7fXZQxA5iBJpAt2stJE7ZBFfPmv9rofX08MAzaRNSlEElvlplqBje4cTNRyjWFZ2Zi8UFOIMK7gfzY8rpeiFfD7K3MudsgOhjcmYQJydMCmBmPOviCXoTX7qIO~AWSYv4uBfWfkS-cG61XKzCWaskJZTgM-zT2E2~p34~XVaqtZB6WXpE4n4T83rBCvGoDDSZ~kqs6fH3P8DMtH4EGjWvBjPMf3V~0YSspzTlqNppgRcPyCLQV7N5w__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
tar -xzf cellranger-arc-2.0.2.tar.gz

# A 10x-compatible reference genome is also required, and we install these as
# needed from here:
#
# https://support.10xgenomics.com/single-cell-gene-expression/software/downloads/latest
#
# into /dcs04/lieber/lcolladotor/annotationFiles_LIBD001/10x.

## Ignore all downloaded/installed files
echo "cellranger-arc-2.0.2*" > .gitignore
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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Fri Jul 28 04:20:04 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
