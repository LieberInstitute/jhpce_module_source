# Installation

```bash
## Commands used for installing the software
wget https://cache.ruby-lang.org/pub/ruby/3.1/ruby-3.1.2.tar.gz
tar xvfz ruby-3.1.2.tar.gz
mkdir rubyinstall
cd ruby-3.1.2
./configure --prefix=/jhpce/shared/jhpce/libd/ruby/3.1.2/rubyinstall
# ---
# Configuration summary for ruby version 3.1.2
# 
#    * Installation prefix: /jhpce/shared/jhpce/libd/ruby/3.1.2/rubyinstall
#    * exec prefix:         ${prefix}
#    * arch:                x86_64-linux
#    * site arch:           ${arch}
#    * RUBY_BASE_NAME:      ruby
#    * ruby lib prefix:     ${libdir}/${RUBY_BASE_NAME}
#    * site libraries path: ${rubylibprefix}/${sitearch}
#    * vendor path:         ${rubylibprefix}/vendor_ruby
#    * target OS:           linux
#    * compiler:            /jhpce/shared/jhpce/core/conda/miniconda3-4.6.14/e\
#                           nvs/svnR-devel/bin/x86_64-conda_cos6-linux-gnu-cc
#    * with pthread:        yes
#    * with coroutine:      amd64
#    * enable shared libs:  no
#    * dynamic library ext: so
#    * CFLAGS:              ${optflags} ${debugflags} ${warnflags}
#    * LDFLAGS:             -L. -Wl,-O2 -Wl,--sort-common -Wl,--as-needed \
#                           -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags \
#                           -Wl,--gc-sections \
#                           -Wl,-rpath,/jhpce/shared/jhpce/core/conda/minicond\
#                           a3-4.6.14/envs/svnR-devel/lib \
#                           -Wl,-rpath-link,/jhpce/shared/jhpce/core/conda/min\
#                           iconda3-4.6.14/envs/svnR-devel/lib \
#                           -L/jhpce/shared/jhpce/core/conda/miniconda3-4.6.14\
#                           /envs/svnR-devel/lib -fstack-protector-strong \
#                           -rdynamic -Wl,-export-dynamic
#    * DLDFLAGS:            -Wl,-O2 -Wl,--sort-common -Wl,--as-needed \
#                           -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags \
#                           -Wl,--gc-sections \
#                           -Wl,-rpath,/jhpce/shared/jhpce/core/conda/minicond\
#                           a3-4.6.14/envs/svnR-devel/lib \
#                           -Wl,-rpath-link,/jhpce/shared/jhpce/core/conda/min\
#                           iconda3-4.6.14/envs/svnR-devel/lib \
#                           -L/jhpce/shared/jhpce/core/conda/miniconda3-4.6.14\
#                           /envs/svnR-devel/lib \
#                           -Wl,--compress-debug-sections=zlib
#    * optflags:            -O3 -fno-fast-math
#    * debugflags:          -ggdb3
#    * warnflags:           -Wall -Wextra -Wdeprecated-declarations \
#                           -Wduplicated-cond -Wimplicit-function-declaration \
#                           -Wimplicit-int -Wmisleading-indentation \
#                           -Wpointer-arith -Wwrite-strings \
#                           -Wimplicit-fallthrough=0 -Wmissing-noreturn \
#                           -Wno-cast-function-type \
#                           -Wno-constant-logical-operand -Wno-long-long \
#                           -Wno-missing-field-initializers \
#                           -Wno-overlength-strings \
#                           -Wno-packed-bitfield-compat \
#                           -Wno-parentheses-equality -Wno-self-assign \
#                           -Wno-tautological-compare -Wno-unused-parameter \
#                           -Wno-unused-value -Wsuggest-attribute=format \
#                           -Wsuggest-attribute=noreturn -Wunused-variable \
#                           -Wundef
#    * strip command:       /jhpce/shared/jhpce/core/conda/miniconda3-4.6.14/e\
#                           nvs/svnR-devel/bin/x86_64-conda_cos6-linux-gnu-str\
#                           ip -S -x
#    * install doc:         rdoc
#    * JIT support:         yes
#    * man page type:       doc
# 
# ---
make
make install

## Ignore all downloaded/installed files
cd ..
echo "rubyinstall" >> .gitignore
echo "ruby-*" >> .gitignore

chmod -R 775 .

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
$ module list

Currently Loaded Modules:
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV   9) git/2.28.0     11) ruby/2.6.4p104  13) conda/3-4.6.14
  2) stata/17        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git-status-size/github     10) git-lfs/2.8.0  12) rmate/1.5.9     14) conda_R/devel



$ date
Mon Jun  6 16:28:52 EDT 2022
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-076.cm.cluster
```
