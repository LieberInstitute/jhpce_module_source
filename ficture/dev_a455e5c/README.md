```bash
## Commands used for installing the software

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

#   Start with a basic conda environment with just python 3.9
module load conda/3-24.3.0
conda create -y -p ficture_env python=3.9

#   Add some libraries I use
conda activate ./ficture_env
pip install parquet-tools session_info pyhere

#   Clone FICTURE at commit a455e5c on the dev branch
git clone git@github.com:seqscope/ficture.git
cd ficture
git checkout dev

#   importlib should not be a dependency
grep -v 'importlib' requirements.txt > temp.txt
mv temp.txt requirements.txt

pip install -r requirements.txt
pip install -e .

cd ..
conda deactivate

echo 'ficture' > .gitignore
echo 'ficture_env' >> .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore . ..
chmod 775 -R ficture
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
Fri Feb  7 03:40:17 PM EST 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-152.cm.cluster
```
