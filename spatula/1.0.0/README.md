# Installation

```bash
## Commands used for installing the software
## patches are included to remove libdeflate dependency
ver=1.0.0
wget https://github.com/seqscope/spatula/releases/download/v1.0.0/spatula-$ver.tar.gz
tar xvfz spatula-$ver.tar.gz
#unset CPPFLAGS CFLAGS LDFLAGS # geo might need to clean up the build environment
cd spatula-$ver
patch CMakeLists.txt < ../main_patch.diff
cd submodules/qgenlib
patch CMakeLists.txt < ../../../qgenlib_patch.diff
cd ..
sed -i 's/make$/make -j4/' build.sh # life is short
sh -x build.sh
cd ..
mkdir build
cd build
cmake ..
make -j4
mv ../bin/spatula ../../
cd ../.. 
./spatula --help # basic test

## Ignore all downloaded/installed files
echo -e "spatula\nspatula-$ver" > .gitignore
unlink spatula-$ver.tar.gz
chown -R :lieber_modules .
chmod -R ug+rwX,o+rX .

## Version control files
git add *.diff
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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

$ date
Thu Sep  5 08:51:22 PM EDT 2024
$ echo "User: ${USER}"
User: gpertea1
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-169
```
