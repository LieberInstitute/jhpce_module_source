```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.8
module load conda/3-23.3.1
conda create -y -p stalign_env python=3.8

#   Install STalign and its dependencies, then add some libraries I use
conda activate ./stalign_env
pip install --upgrade "git+https://github.com/JEFworks-Lab/STalign.git"
pip install session_info pyhere openpyxl tables
conda deactivate

#   Also directly clone the repo, since sometimes the user is expected to
#   directly invoke python scripts from the repo
git clone git@github.com:JEFworks-Lab/STalign.git

echo 'stalign_env' > .gitignore
echo 'STalign' >> .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 555 -R stalign_env

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Tue Mar 26 09:02:42 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-098.cm.cluster
```
