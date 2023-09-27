# Installation

```bash
## Commands used for installing/building the software
## building on Rocky 9 requires Boost 1.82, linked statically
## no conda module/env should be loaded, environment should be clean (default OS compiler)
MODLUA=/jhpce/shared/libd/modulefiles 
MOD=Salmon
ver=1.10.1
SW=$(pwd -P) # current module source directory is the install prefix
mkdir tmp && cd tmp
wget -qO- https://github.com/COMBINE-lab/salmon/archive/refs/tags/v${ver}.tar.gz | tar -xvzf -
wget -qO- https://boostorg.jfrog.io/artifactory/main/release/1.82.0/source/boost_1_82_0.tar.bz2 | tar -xvjf - 
unset CPPFLAGS; unset LDFLAGS
## install boost statically in $SW
cd boost* 
./bootstrap.sh --prefix=$SW
./b2 cxxflags=-fPIC cflags=-fPIC link=static -a
./b2 install
## now build salmon linking statically to this Boost build
cd ../salmon*
mkdir build; cd build
cmake -DNO_IPO=TRUE -DFETCH_STADEN=TRUE -DBOOST_ROOT=$SW -DCMAKE_INSTALL_PREFIX=$SW ..
make -j4
make install
## cleanup
##
cd $SW
rm -rf tmp
chmod -R g+rwX .
## .gitignore prep: ignore installed files (including Boost libs and headers)
echo -e "bin/\nlib/\ninclude/\n" > .gitignore
## Copy/create/edit the lua file: $ver.lua
## version control files
git add .gitignore README.md $ver.lua
## Deployment:
chmod a+rx $ver.lua
mkdir -p $MODLUA/$MOD
chmod a+rx $MODLUA/$MOD
cp $ver.lua $MODLUA/$MOD/
```

# Reproducibility

```bash
## Evaluate the following commands
module list
date
echo "User: ${USER}"
echo "Hostname: ${HOSTNAME}"
```

```
## copy paste the output from the previous commands
Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

Sun Sep 24 03:00:30 PM EDT 2023
User: gpertea1
Hostname: compute-090.cm.cluster
```
