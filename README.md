# JHPCE module source

This repository contains the [module](https://lmod.readthedocs.io/) source files for modules contributed to [JHPCE](http://www.jhpce.jhu.edu/) by members of the Data Science team lead by [Andrew E. Jaffe](http://aejaffe.com/) at the [Lieber Institute for Brain Development](https://www.libd.org/).

The configuration files are hosted in the [jhpce_module_config](https://github.com/LieberInstitute/jhpce_module_config) GitHub repository.

# Questions

If you have any questions, please send an email to the [JHPCE bithelp](mailto:bithelp@lists.johnshopkins.edu) mailing list.

# Usage

See the [jhpce_module_config](https://github.com/LieberInstitute/jhpce_module_config#usage) repository.

# Create a new module

__Step 1.__ Create a directory in lowercase with the name of the source you are installing. In this example, we'll install [`HISAT2`](https://ccb.jhu.edu/software/hisat2/index.shtml) version [2.0.4](ftp://ftp.ccb.jhu.edu/pub/infphilo/hisat2/downloads/hisat2-2.0.4-Linux_x86_64.zip).

```bash
mkdir hisat2
```

__Step 2.__ Create a nested directory with the version number of the software you are installing. In this example, that would be `2.0.4`.

```bash
mkdir hisat2/2.0.4
```

__Step 3.__ Copy and rename the [template README.md](README_template.md)

```bash
cp README_template.md hisat2/2.0.4/README.md
```

__Step 4.__ Edit the template README.md in the new directory and install the software. Make sure that any information for reproducing the installation process is documented. As an example, check the [hisat2/2.0.4/README.md](hisat2/2.0.4/README.md) file.

__Step 5.__ Make sure that the permissions are set correctly at the end.

```bash
chmod 775 -R hisat2/2.0.4/
```


# Contributors

- [Leonardo Collado Torres](http://lcolladotor.github.io)
- [Emily E Burke](https://www.libd.org/team/emily-e-burke/)
- [Andrew E Jaffe](http://aejaffe.com/)

# JHPCE location

`/jhpce/shared/jhpce/libd`

Useful aliases for your `~/.bashrc` file:

```bash
## Creating modules
# https://lmod.readthedocs.io/en/latest/050_lua_modulefiles.html
alias modsrc="cd /jhpce/shared/jhpce/libd"
alias modlua="cd /jhpce/shared/jhpce/modulefiles/libd"
```
