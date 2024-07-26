#   README.md and .gitignore files for this branch (SLURM) of the repo were
#   copied from the SGE branch. Then gradually, software was installed following
#   instructions in the READMEs at JHPCE. This script detects software
#   directories that only include a README.md file (and not installed files), to
#   determine which modules have yet to be installed at JHPCE.

library(jaffelab)

base_dir = '/jhpce/shared/libd/core'

#   Directories ending in /[software name]/[version number]
modules = unlist(
    lapply(
        list.dirs(base_dir, recursive = FALSE),
        function(x) list.dirs(x, recursive = FALSE)
    )
)
modules = modules[!grepl('/\\.[A-z]*/', modules)] # filter out hidden files

#   Detect which module directories have only one non-hidden file (and assume
#   that must be README.md)
is_missing = sapply(modules, function(x) length(list.files(x)) == 1)
missing_modules = names(is_missing)[is_missing]

#   Print only the module name and version
print(ss(missing_modules, paste0(base_dir, '/'), 2))
