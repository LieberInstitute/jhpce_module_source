# Installation

```bash
## Commands used for installing the software

# The download link here is a temporary link produced after providing an email
# and agreeing to some terms of use. New users would have to provide this info
# to generate a similar link, starting at:
#
# https://support.10xgenomics.com/spatial-gene-expression/software/downloads/latest
curl -o xeniumranger-2.0.0.tar.gz "https://cf.10xgenomics.com/releases/xeniumranger/xeniumranger-2.0.0.tar.gz?Expires=1717726245&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=X6EjacFg~LCYLTqGUF~zsb3PQYob4NHZHbtdFN8WXcaXBqkUng03VKGajYD8c-Ae~akI~QTWbC-lS7cF2UCtX0OwU4VV8xoxd~4kHOoCXip3~LCwtd0yOMs0t0cf6zHvGBA5heDOtmtSgw6lKv-NFBZEvjHHUnrTqAZuXE8MyFmAenBhdfd2xc7Z3vbm48NR5oafLl21hCccSTiPbZmpxMcympqUBKl3u5y6b3mR99yCeBGpyM1l55VYLbnI8jjH30vAN661NQqT5nVI9zM27UidGl5VzwErxkbTok~vlqZZILLaFbq4PBxDB92lLIPuCQaVW8JwyAVjzwRUwBgYQg__"
tar -xzf xeniumranger-2.0.0.tar.gz
rm xeniumranger-2.0.0.tar.gz
mv xeniumranger-xenium2.0 xeniumranger-2.0.0

## Ignore all downloaded/installed files
echo "xeniumranger-2.0.0" > .gitignore

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



 

$ date


$ echo "User: ${USER}"


$ echo "Hostname: ${HOSTNAME}"

```
