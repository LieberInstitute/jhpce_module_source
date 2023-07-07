# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-2.1.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-2.1.0.tar.gz?Expires=1688782666&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=aohHQR4m-w~smUE-zKYKytVCRTNWpUVpP2wKqgill2gDxcOBwzR7LG-zks2pItMQfh~4MwUTfjYWVyDjtHkLc846JZ3lN7OTYtIxRYsNmtMJ~I6iQGgD8FGbQVosKyrROYQOQaSFHeY-dCx3rWjPPPDg0xpq5~6F3H29K4dgxeqKT6XH0YxMiG~1nxegz859UQOIKcPIZ21lt-YpYUxlz82ZssqBL0lbJh16dQ4vhbWFVjfZcRkRVpy8-YlcffWZx3HTgCgMWCkrmyZ~XORKn8ENuklIWgCFZYqvddbdSSDKq5WZdyuoEQ6unpF68cKWw7tpxWUMkVqdsRlyC06scw__"
tar -xzf spaceranger-2.1.0.tar.gz
rm spaceranger-2.1.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-2.1.0" > .gitignore

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
  1) JHPCE_tools/3.0

 

$ date
Fri Jul  7 10:29:06 AM EDT 2023

$ echo "User: ${USER}"
User: neagles

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-111.cm.cluster
```
