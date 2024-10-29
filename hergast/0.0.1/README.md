```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

git clone https://github.com/GYQ-form/HERGAST.git

#   Start with a basic conda environment with just python 3.9
module load conda/3-24.3.0
conda create -y -p hergast_env python=3.9

#   Install HERGAST, then add some libraries I use. bin2cell is installed for
#   its ability to read Visium HD data
conda activate ./hergast_env
cd HERGAST
pip install .
pip install session_info pyhere bin2cell==0.3.0
cd ..

conda deactivate

echo 'hergast_env' > .gitignore
echo 'HERGAST' >> .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore . ..
chmod 775 -R HERGAST
chmod 555 -R hergast_env

## Version control files
git add .gitignore
git add README.md
```

```bash
## Evaluate the following commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Tue Oct 29 09:29:08 AM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-169.cm.cluster
```
