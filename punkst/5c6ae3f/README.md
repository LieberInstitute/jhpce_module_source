# Installation

```bash
## Commands used for installing the software

#   Install Eigen, a dependency
mkdir eigen_built
curl -O https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz
tar -xzf eigen-3.4.0.tar.gz
rm eigen-3.4.0.tar.gz
cd eigen-3.4.0
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/jhpce/shared/libd/core/punkst/5c6ae3f/eigen_built ..
cmake --build .
cmake --install .
cd ../..

#   Install OpenCV, a dependency
mkdir /jhpce/shared/libd/core/punkst/5c6ae3f/opencv_built
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip
rm opencv.zip
cd opencv-4.x
mkdir -p build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/jhpce/shared/libd/core/punkst/5c6ae3f/opencv_built ..
cmake --build .
cmake --install .
cd ../..

#   Clone while the latest commit was https://github.com/Yichen-Si/punkst/commit/5c6ae3f27fe146e6534e4233d8b583e71b4447e8
git clone git@github.com:Yichen-Si/punkst.git
cd punkst
mkdir build
cd build

#   Before building, had to edit punkst/5c6ae3f/punkst/src/markerselection.hpp
#   to add '#include <optional>'
cmake \
    -DEIGEN_INCLUDE_DIR=/jhpce/shared/libd/core/punkst/5c6ae3f/eigen_built/include/eigen3 \
    -DFETCH_TBB=ON \
    -DOpenCV_DIR=/jhpce/shared/libd/core/punkst/5c6ae3f/opencv_built/lib64/cmake/opencv4 \
    -DCMAKE_INSTALL_PREFIX=/jhpce/shared/libd/core/punkst/5c6ae3f/punkst_built \
    ..
cmake --build .
cmake --install .
cd ../..

## Ignore all downloaded/installed files
echo 'opencv*' > .gitignore
echo 'eigen*' >> .gitignore
echo 'punkst*' >> .gitignore

chmod -R 775 ..

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
Mon May  5 12:23:51 PM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-168.cm.cluster
```
