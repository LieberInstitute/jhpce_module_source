```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.9
module load conda/3-24.3.0
conda create -y -p ficture_env python=3.9

#   Install FICTURE and its dependencies, then add some libraries I use
conda activate ./ficture_env
pip install ficture==0.0.3.1 
pip install parquet-tools session_info pyhere
conda deactivate

echo 'ficture_env' > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore . ..
chmod 555 -R ficture_env

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
Tue Aug  6 02:56:11 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-114.cm.cluster
```
