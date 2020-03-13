# Installation

```bash
## Commands used for installing the software
module load python/2.7
wget https://downloads.sourceforge.net/project/rseqc/RSeQC-2.6.4.tar.gz
tar zxf RSeQC-2.6.4.tar.gz
cd RSeQC-2.6.4
python setup.py install --root=bin

#install required dependencies by downloading source packages from github
#then point them to our RSeQC root directory
cd /jhpce/shared/jhpce/libd/rseqc/2.6.4/RSeQC-2.6.4/
wget https://github.com/bxlab/bx-python/archive/v0.7.4.zip
unzip v0.7.4.zip
cd bx-python-0.7.4/
python setup.py install --root=/jhpce/shared/jhpce/libd/rseqc/2.6.4/RSeQC-2.6.4/bin

cd /jhpce/shared/jhpce/libd/rseqc/2.6.4/RSeQC-2.6.4/
wget https://github.com/pysam-developers/pysam/archive/v0.9.0.tar.gz
tar zxf v0.9.0.tar.gz
cd pysam-0.9.0/
python setup.py install --root=/jhpce/shared/jhpce/libd/rseqc/2.6.4/RSeQC-2.6.4/bin

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/rseqc/2.6.4
echo "RSeQC-2.6.4*" > .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.23.0     11) python/2.7.9
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0

$ date
Fri Mar 13 18:40:18 EDT 2020
$ echo "User: ${USER}"
User: bbarry
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-055.cm.cluster
```
