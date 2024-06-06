# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o xeniumranger-1.7.1.tar.gz "https://cf.10xgenomics.com/releases/xeniumranger/xeniumranger-1.7.1.tar.gz?Expires=1717728230&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=Idx8ekTJIk4UTIZeP2Oxca1nFqPdtD39TigT7Y~zrNlqFbHarAzzV32IvpO5sHgN8wtfNTukuaHpyhxz60AWSqHTh3WJbtjibg5hitr-1W0fsNGg~Z807FJ3eL6K8IL1h-p43HdmItyM~~6qt4z3r7nOD-UCfb8P7YAU6~MPkvlXtbNYK4jsiWUaEf3xts4XirnT5nRn2Et~aJsr8JRXlxtzhL9p-JD84kcyn9c3mRYpgqZTJb6aQ7-jSzIb8j-~F2paidxIg8JuTRYjsppFFBjpS2a1pF-c0JUYBRnkvKPhCi1w4WjKPCTRgKm8iT6aNECOsXKB82HMlCxk4AESgA__"
tar -xzf xeniumranger-1.7.1.tar.gz
rm xeniumranger-1.7.1.tar.gz
mv xeniumranger-xenium1.7 xeniumranger-1.7.1

## Ignore all downloaded/installed files
echo "xeniumranger-1.7.1" > .gitignore

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) ruby/3.2.2   4) rmate/1.5.10   5) xeniumranger/2.0.0

$ date
Thu Jun  6 11:08:25 AM EDT 2024

$ echo "User: ${USER}"
User: rmiller

$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-121.cm.cluster

```
