# JHPCE module source

This repository contains the [module](https://lmod.readthedocs.io/) source files for modules contributed to [JHPCE](http://www.jhpce.jhu.edu/) by members of the [R/Bioconductor-powered Team Data Science](https://lcolladotor.github.io) at the [Lieber Institute for Brain Development](https://www.libd.org/).

The configuration files are hosted in the [jhpce_module_config](https://github.com/LieberInstitute/jhpce_module_config) GitHub repository.

# Questions

If you have any questions, please send an email to the [JHPCE bithelp](mailto:bithelp@lists.johnshopkins.edu) mailing list.

# Usage

See the [jhpce_module_config](https://github.com/LieberInstitute/jhpce_module_config#usage) repository.

# Create a new module

__Step 1.__ Create a directory in lowercase with the name of the source you are installing. In this example, we'll install [`HISAT2`](https://daehwankimlab.github.io/hisat2/) version [2.2.1](https://github.com/DaehwanKimLab/hisat2/archive/refs/tags/v2.2.1.tar.gz).

```bash
mkdir hisat2
```

__Step 2.__ Create a nested directory with the version number of the software you are installing. In this example, that would be `2.2.1`.

```bash
mkdir hisat2/2.2.1
```

__Step 3.__ Copy and rename the [template README.md](README_template.md)

```bash
cp README_template.md hisat2/2.2.1/README.md
```

__Step 4.__ Edit the template README.md in the new directory and install the software. Make sure that any information for reproducing the installation process is documented. As an example, check the [hisat2/2.2.1/README.md](hisat2/2.2.1/README.md) file.

__Step 5.__ Make sure that the permissions are set correctly at the end.

```bash
## Use 7 for group: so Nick and Leo can edit the files
chmod 775 -R hisat2/2.2.1/
```


# Contributors

## Current

- [Nick Eagles](https://nick-eagles.github.io/)
- [Leonardo Collado Torres](http://lcolladotor.github.io)

## Former

- [Emily E Burke](https://www.libd.org/team/emily-e-burke/)
- [Andrew E Jaffe](http://aejaffe.com/)

# JHPCE location

`/jhpce/shared/libd/core`

Useful aliases for your `~/.bashrc` file:

```bash
## Creating modules
# https://lmod.readthedocs.io/en/latest/050_lua_modulefiles.html
alias modsrc="cd /jhpce/shared/libd/core"
alias modlua="cd /jhpce/shared/libd/modulefiles"
```
