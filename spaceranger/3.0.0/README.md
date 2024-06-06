# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-3.0.0.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-3.0.0.tar.gz?Expires=1713505560&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=iPiHrQC3Wh1nEPTfrTNQTBZu24uX4XK0CNeeoKY3OFXhZkqDht-xuJCVk3SetNO1yc9UGvRgI4RFpZcR58O9hh5owpx5xuRjw0hWRLm4JksPI-tpj-rumja2U49J8-9KbqLf0KrCO0CmSUKG~~MKgXxva5llGSm82OUQPX8q-pGPeveHRVES~MGPL5AoEYOWw3UVx4Fca18HT8U5oZWkkp6e8c6ACcOesTW7Hg26Jq09fVYvk9uoY-VGjxUpXsmGUSySk7PxA9v2l7ElugwkMhEc2p-b5ApFwccfkstTOz-pCtTpiC8obSTQd6XgeowwQiFxcq8jRWgasgmZwHxxkQ__"
tar -xzvf spaceranger-3.0.0.tar.gz
rm spaceranger-3.0.0.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-3.0.0" > .gitignore

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
Thu Apr 18 02:18:54 PM EDT 2024

$ echo "User: ${USER}"
User: rmiller

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-107.cm.cluster
```
