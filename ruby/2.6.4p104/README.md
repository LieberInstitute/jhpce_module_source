# Installation

```bash
## Commands used for installing the software
wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.4.tar.gz
tar xvfz ruby-2.6.4.tar.gz
mkdir rubyinstall
cd ruby-2.6.4
./configure --prefix=/jhpce/shared/jhpce/libd/ruby/2.6.4p104/rubyinstall
# Configuration summary for ruby version 2.6.4
#
#    * Installation prefix: /jhpce/shared/jhpce/libd/ruby/2.6.4p104/rubyinstal\
#                           l
#    * exec prefix:         ${prefix}
#    * arch:                x86_64-linux
#    * site arch:           ${arch}
#    * RUBY_BASE_NAME:      ruby
#    * ruby lib prefix:     ${libdir}/${RUBY_BASE_NAME}
#    * site libraries path: ${rubylibprefix}/${sitearch}
#    * vendor path:         ${rubylibprefix}/vendor_ruby
#    * target OS:           linux
#    * compiler:            gcc
#    * with pthread:        yes
#    * enable shared libs:  no
#    * dynamic library ext: so
#    * CFLAGS:              ${optflags} ${debugflags} ${warnflags}
#    * LDFLAGS:             -L. -fstack-protector-strong -rdynamic \
#                           -Wl,-export-dynamic
#    * DLDFLAGS:            -Wl,--compress-debug-sections=zlib
#    * optflags:            -O3
#    * debugflags:          -ggdb3
#    * warnflags:           -Wall -Wextra -Wdeclaration-after-statement \
#                           -Wdeprecated-declarations \
#                           -Wimplicit-function-declaration -Wimplicit-int \
#                           -Wpointer-arith -Wwrite-strings \
#                           -Wmissing-noreturn -Wno-cast-function-type \
#                           -Wno-constant-logical-operand -Wno-long-long \
#                           -Wno-missing-field-initializers \
#                           -Wno-overlength-strings \
#                           -Wno-packed-bitfield-compat \
#                           -Wno-parentheses-equality -Wno-self-assign \
#                           -Wno-tautological-compare -Wno-unused-parameter \
#                           -Wno-unused-value -Wsuggest-attribute=format \
#                           -Wsuggest-attribute=noreturn -Wunused-variable
#    * strip command:       strip -S -x
#    * install doc:         yes
#    * JIT support:         yes
#    * man page type:       doc
make
make install

## Ignore all downloaded/installed files
cd ..
echo "rubyinstall" >> .gitignore
echo "ruby-*" >> .gitignore

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
  1) matlab/R2019a   3) JHPCE_tools/1.0   5) gcc/4.4.7                       7) JHPCE_CENTOS7_DEFAULT_ENV
  2) stata/16        4) sge/8.1.9         6) COMMUNITY_CENTOS7_DEFAULT_ENV   8) git/2.17.0



$ date
Thu Aug 29 10:28:51 EDT 2019
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-068.cm.cluster
```
