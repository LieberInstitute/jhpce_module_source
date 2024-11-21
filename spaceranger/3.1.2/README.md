# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-3.1.2.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-3.1.2.tar.gz?Expires=1732247841&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=c6QpVZZD7~Tu9GAQqH5NoxTuxkT~F8thceF4iVX~aDx-JtJGefxvUU1zRYZyVsat56kyvsPFR7X75~1stK~ZCaBRdmsYQy5ay4Au2ETdDACFVc34cAiFPvHOeAolJ3zDi9Y3PCzyz3OCzpiMQYKAwP5TR1dtVBfq4-Oq93culSUCin9GnGikbwUImQSSBKagQWQo85qEwi-dY9REvex9gUpFnjBadCVadt40UcWc-sD0e4jJ1Yy~arHFYGkm0QOUG80sQAGnf1GP6RFyh~6EAtKy8rqSLzH~qVYmHf3ZXowLjSv4fZzYnhXRivPMUKG2o~bMsSVg6sL127CfwDQfoA__"
tar -xzvf spaceranger-3.1.2.tar.gz
rm spaceranger-3.1.2.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-3.1.2" > .gitignore

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
