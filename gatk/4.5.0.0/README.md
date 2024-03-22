```bash
## Commands used for installing the software
wget https://github.com/broadinstitute/gatk/releases/download/4.5.0.0/gatk-4.5.0.0.zip
unzip gatk-4.5.0.0.zip
rm gatk-4.5.0.0.zip
mv gatk-4.5.0.0 gatk

#   Make sure not to rely on user packages
export PYTHONNOUSERSITE="some_value"

# Use mamba, which will be faster
module load conda/3-23.3.1
# conda create -n mamba_env -c conda-forge mamba
conda activate mamba_env

#   Create a conda environment with the recommended dependencies
mamba env create -p gatk_env -f gatk/gatkcondaenv.yml

echo 'gatk*' > .gitignore

#   Set open permissions, except don't allow writing that could corrupt the
#   conda environment for everyone
chmod 775 README.md .gitignore .
chmod 775 -R gatk
chmod 555 -R gatk_env

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
Fri Mar 22 02:05:04 PM EDT 2024
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-100.cm.cluster
```
