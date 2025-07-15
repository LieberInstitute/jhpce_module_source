# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o spaceranger-4.0.1.tar.gz "https://cf.10xgenomics.com/releases/spatial-exp/spaceranger-4.0.1.tar.gz?Expires=1752628766&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=Qb~w1E8woGfB6lyn0HUIUx5nAgaMK~tTi3UvmSEyKeB38-Y9Axl61w1U0G~FU4JQQhFejr3g2YJwfjhsyHxqiqyQVp73SsOj36xjjsc0q5loPOl0oEwAs1kqBZn~AsL5HklSlQCSzA6sMRR~9R3IjaCDx1ebGuh311j1ytG6~vo-0LG6bP0JpfJ~XO7jNCDrQI7~PTpoDMIROCViDjhP03iowqo8JG790xzxS2AO6yIOPHkfdC9dv-w9bZJE6ZB7F9p-qpmFJFyXMnIu7d054BORQXHgtzA2F5S1pK1CjDdXwFiS-sOpSA8hk~d9sgjmlcICJsJJcONS0kR4BzB5MA__"
tar -xzf spaceranger-4.0.1.tar.gz
rm spaceranger-4.0.1.tar.gz

## Ignore all downloaded/installed files
echo "spaceranger-4.0.1" > .gitignore

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
Tue Jul 15 09:23:57 AM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-159.cm.cluster
```
