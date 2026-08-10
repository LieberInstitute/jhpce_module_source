```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.9
module load conda/3-24.3.0
conda create -y -p hd_env python=3.9

conda activate ./hd_env

#   Install bin2cell, FICTURE, and ENACT
pip install bin2cell==0.3.3 ficture==0.0.5.2 enact-SO==0.2.4

#   For stardist with GPU support (bin2cell and maybe ENACT)
pip install tensorflow[and-cuda]

#   Extra libraries that are useful to have
pip install parquet-tools session_info pyhere openpyxl plotnine ome_types

#   Necessary for spatula
conda install -y -c conda-forge libdeflate

#   Install HERGAST
git clone https://github.com/GYQ-form/HERGAST.git
cd HERGAST
pip install .
cd ..

#   Install spatula, which includes helper tools for running FICTURE
git clone --recursive https://github.com/seqscope/spatula.git
cd spatula/submodules
sh -x build.sh
cd ..
mkdir build
cd build
cmake ..
make
cd ../..

#   Clone CellNEST and modify the main shell script utility to invoke scripts
#   as long as they're on the PATH
git clone git@github.com:schwartzlab-methods/CellNEST.git
sed -Ei 's/(python -u|python|bash) (.*)\.(py|sh)/\1 $(which \2.\3)/g' CellNEST/cellnest

#   Install CellNEST python dependencies
pip install qnorm pyvis altair torch-sparse torch-scatter

conda deactivate

echo 'hd_env' > .gitignore
echo 'HERGAST' >> .gitignore
echo 'spatula' >> .gitignore
echo 'CellNEST' >> .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 775 -R HERGAST spatula CellNEST
chmod 555 -R hd_env

## Version control files
git add .gitignore
git add README.md
```

```bash
## Evaluate the following commands
module list
date
echo "User: ${USER}"
echo "Hostname: ${HOSTNAME}"
```

```bash
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Mon Nov 25 11:08:39 AM EST 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-122.cm.cluster
```
