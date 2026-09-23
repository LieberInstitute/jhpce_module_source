```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.12
module load conda/3-24.3.0
conda create -y -p pdtcli_env python=3.12

conda activate ./pdtcli_env

#   The actual software package was provided by email
tar -xzf pdtcli-1.4.10.tar.gz
cd pdtcli-1.4.10
pip install .

#   Other helpful libraries
pip install plotnine session_info pyhere openpyxl

conda deactivate

cd ..
echo 'pdtcli*' > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 555 -R pdtcli_env

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
Wed Sep 23 12:47:40 PM EDT 2026
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-168.cm.cluster
```
