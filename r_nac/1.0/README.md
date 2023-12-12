# Installation

```bash
## Commands used for installing the software

#   Create a conda environment with the recommended dependencies
module load conda/3-23.3.1
conda create -y -p nac_env r-essentials=4.3 r-base=4.3
conda activate ./nac_env
conda install -y -c conda-forge imagemagick

#   Install packages needed for the spatialNAc project
Rscript -e "
pkg_list = c(
    'LieberInstitute/spatialLIBD', 'SpatialExperiment', 'here', 'tidyverse',
    'LieberInstitute/jaffelab', 'sessioninfo', 'scran', 'BiocParallel',
    'BiocSingular', 'LieberInstitute/spatialNAcUtils', 'scater', 'scry',
    'HDF5Array', 'uwot', 'PCAtools', 'ggplot2', 'Polychrome', 'harmony',
    'cowplot', 'BayesSpace', 'nnSVG'
)
install.packages(c('BiocManager', 'remotes'))
BiocManager::install(pkg_list)
"

conda deactivate

## Ignore all downloaded/installed files
echo "nac_env" > .gitignore

#   Set loose permissions, even allowing modification of the environment while
#   the module is loaded
chmod 775 -R .

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-23.3.1

 

$ date
Tue Dec 12 05:32:02 PM EST 2023
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-100.cm.cluster
```
