# Installation

This uses the module conda/3-24 to benefit for using the libmamba solver.

```bash
module load conda/3-24
conda create /jhpce/shared/libd/core/leafcutter/leafcutter-0.2.9 --solver=libmamba python=3.10 r-base=4.0.5 radian 
conda activate /jhpce/shared/libd/core/leafcutter/leafcutter-0.2.9
```
To prevent unexpected upgrades to newer versions of R, which seem to break leafcutter installation, we pin the R version:

```bash
echo "r-base 4.0.*" >> /jhpce/shared/libd/core/leafcutter/leafcutter-0.2.9/conda-meta/pinned
```

Then we install various pre-built packagesa for this R version.

```bash
conda install r-devtools r-rstantools numpy scipy scikit-learn
conda install -c bioconda bioconductor-biobase bioconductor-dirichletmultinomial bioconductor-summarizedexperiment \
 bioconductor-edger bioconductor-limma bioconductor-deseq2 bioconductor-rtracklayer
```

Then, in an R session:

```R
devtools::install_github("davidaknowles/leafcutter/leafcutter")
```

For convenience (and access to the other scripts related to the leafcutter workflow), I also cloned the leafcutter repository:
```bash
cd /jhpce/shared/libd/core/leafcutter/leafcutter-0.2.9
git clone https://github.com/davidaknowles/leafcutter.git
# for convenience also copy some programs related to the leafcutter workflow
cp ~gpertea1/sw/bin/{samtools,regtools,bedtools,bgzip} bin/
cp leafcutter/{clustering,scripts}/*.{py,pl,R,sh} bin/
# save current environment and session info 
conda export > leafcutter-0.2.9.yaml
R -e 'library(leafcutter);sessionInfo()' > sessionInfo.txt
```

Set the proper permissions and version control files
```bash
cd /jhpce/shared/libd/core/leafcutter
echo "leafcutter*/*" > .gitignore
chmod -R a+rX .
git add -f .gitignore README.md sessionInfo.txt leafcutter-0.2.9.yaml leafcutter-0.2.9/conda-meta/pinned
```
