#!/bin/bash

#SBATCH -p shared
#SBATCH -c 1
#SBATCH --mem=2G
#SBATCH --job-name=fix_permissions
#SBATCH -o fix_permissions.log
#SBATCH -e fix_permissions.log

#   Ensure permissions are correct on all source and lua files:
#   'ordinary_permissions' controls permissions on all lua files and non-conda-
#   environment source files. 'conda_permissions' controls permissions on conda
#   environments.

ordinary_permissions=775
conda_permissions=555
src_dir=/jhpce/shared/libd/core
lua_dir=/jhpce/shared/libd/modulefiles

echo "Setting default permissions on all source files..."
chmod -R $ordinary_permissions $src_dir

echo "Setting more-restrictive permissions on conda/ virtual environments..."
for env_dir in $(ls -1d ${src_dir}/*/*/*_env); do
    echo "[Conda/venv dir] $env_dir"
    chmod -R $conda_permissions $env_dir
done

echo "Setting open permissions on 'r_nac'..."
chmod -R 777 ${src_dir}/r_nac/1.0/nac_env

echo "Setting default permisions on all lua files..."
chmod -R $ordinary_permissions $lua_dir
echo "Done."
