# Installation

```bash
## Commands used for installing the software

wget Arioc.x.151.zip https://github.com/RWilton/Arioc/releases/download/v1.51/Arioc.x.151.zip
unzip Arioc.x.151.zip
rm Arioc.x.151.zip

# Necessary to find 'nvcc' and CUDA header files
export PATH=/usr/local/cuda/bin:$PATH

cd src
make clean
make AriocE
make AriocU
make AriocP
cd ..

## Ignore all downloaded/installed files
echo "src" > .gitignore
echo "bin" >> .gitignore

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
echo "Node name: ${SLURMD_NODENAME}"
```

```bash
## copy paste the output from the previous commands
$ module list

Currently Loaded Modules:
  1) JHPCE_tools/3.0

 

$ date
Thu Oct  5 01:13:48 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-117
```
