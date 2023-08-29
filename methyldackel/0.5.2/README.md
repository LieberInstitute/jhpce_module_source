# Installation

```bash
## Commands used for installing the software

wd=/jhpce/shared/libd/core/methyldackel/0.5.2

#  Install libBigWig (0.4.7) locally
wget https://github.com/dpryan79/libBigWig/archive/refs/tags/0.4.7.tar.gz
tar -xzf 0.4.7.tar.gz
rm 0.4.7.tar.gz
cd libBigWig-0.4.7
make prefix=$wd install
cd ..

#  Rely on the module for htslib-based dependencies
module load htslib/1.18

#  Install MethylDackel (0.5.2)
wget https://github.com/dpryan79/MethylDackel/archive/refs/tags/0.5.2.tar.gz
tar -xzf 0.5.2.tar.gz
rm 0.5.2.tar.gz
cd MethylDackel-0.5.2
make CFLAGS="-O3 -Wall -I${wd}/include " LIBBIGWIG="$wd/lib/libBigWig.a" LIBS="-L$wd/lib"
make install prefix=$wd CFLAGS="-O3 -Wall -I${wd}/include " LIBBIGWIG="$wd/lib/libBigWig.a" LIBS="-L$wd/lib"
cd ..

chmod 775 -R .

## Ignore all downloaded/installed files
echo "lib*" > .gitignore
echo "include" >> .gitignore
echo "MethylDackel*" >> .gitignore

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
  1) JHPCE_tools/3.0   2) htslib/1.18

 

$ date
Tue Aug 29 02:54:24 PM EDT 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Node name: ${SLURMD_NODENAME}"
Node name: compute-113
```
