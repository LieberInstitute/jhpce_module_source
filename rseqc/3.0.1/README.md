# Installation

```bash
## Commands used for installing the software
module load python/3.7.3
wget https://downloads.sourceforge.net/project/rseqc/RSeQC-3.0.1.tar.gz
tar zxf RSeQC-3.0.1.tar.gz
cd RSeQC-3.0.1
python setup.py install --root=bin

#install required dependencies by downloading source packages from git or pip download
#then point them to our RSeQC root directory
cd /jhpce/shared/jhpce/libd/rseqc/3.0.1/RSeQC-3.0.1/
#bx-python-master.zip
unzip bx-python-master.zip
cd bx-python-master
python setup.py install --root=/jhpce/shared/jhpce/libd/rseqc/3.0.1/RSeQC-3.0.1/bin

cd /jhpce/shared/jhpce/libd/rseqc/3.0.1/RSeQC-3.0.1/
#pysam-0.15.3.tar.gz
tar zxf pysam-0.15.3.tar.gz
cd pysam-0.15.3
python setup.py install --root=/jhpce/shared/jhpce/libd/rseqc/3.0.1/RSeQC-3.0.1/bin

## Ignore all downloaded/installed files
cd /jhpce/shared/jhpce/libd/rseqc/3.0.1
echo "RSeQC-3.0.1*" > .gitignore

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

Currently Loaded Modules:
  1) matlab/R2019a     4) sge/8.1.9                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/16          5) gcc/4.4.7                       8) python/3.7.3
  3) JHPCE_tools/1.0   6) COMMUNITY_CENTOS7_DEFAULT_ENV

Sat Dec  7 21:55:59 EST 2019
User: bbarry
Hostname: compute-082.cm.cluster
```

