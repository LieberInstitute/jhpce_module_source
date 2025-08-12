```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.10
module load conda/3-24.3.0
conda create -y -p liana_env python=3.10

conda activate ./liana_env

#   Install LIANA+ 1.5.1
pip install liana==1.5.1

#   Libraries needed for tutorial or otherwise helpful
pip install 'decoupler>=2.0.0' mofax muon omnipath marsilea plotnine session_info pyhere openpyxl mofapy2

conda deactivate

echo 'liana_env' > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .. .
chmod 555 -R liana_env

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
Mon Aug 11 02:50:48 PM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-120.cm.cluster
```
