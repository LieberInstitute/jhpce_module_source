```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.8
module load conda/3-24.3.0
conda create -y -p bin2cell_env python=3.8

#   Install bin2cell and its dependencies, then add some libraries I use
conda activate ./bin2cell_env
pip install bin2cell==0.3.0
pip install tensorflow[and-cuda] # for stardist with GPU support
pip install session_info pyhere openpyxl
conda deactivate

echo 'bin2cell_env' > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 555 -R bin2cell_env

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
Tue Sep 24 08:43:37 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
```
