# Installation

```bash
## Commands used for installing the software
wget https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.2.tar.gz
tar xvfz ruby-3.2.2.tar.gz
mkdir rubyinstall
cd ruby-3.2.2
./configure --prefix=/jhpce/shared/jhpce/libd/ruby/3.2.2/rubyinstall
# ---
# Configuration summary for ruby version 3.2.2
# 
#    * Installation prefix: /jhpce/shared/jhpce/libd/ruby/3.2.2/rubyinstall
#    * exec prefix:         ${prefix}
#    * arch:                x86_64-linux
#    * site arch:           ${arch}
#    * RUBY_BASE_NAME:      ruby
#    * ruby lib prefix:     ${libdir}/${RUBY_BASE_NAME}
#    * site libraries path: ${rubylibprefix}/${sitearch}
#    * vendor path:         ${rubylibprefix}/vendor_ruby
#    * target OS:           linux
#    * compiler:            gcc
#    * with thread:         pthread
#    * with coroutine:      amd64
#    * enable shared libs:  no
#    * dynamic library ext: so
#    * CFLAGS:              ${optflags} ${debugflags} ${warnflags}
#    * LDFLAGS:             -L. -fstack-protector-strong -rdynamic -Wl,-export-dynamic
#    * DLDFLAGS:            -Wl,--compress-debug-sections=zlib
#    * optflags:            -O3 -fno-fast-math
#    * debugflags:          -ggdb3
#    * warnflags:           -Wall -Wextra -Wdeprecated-declarations -Wdiv-by-zero -Wduplicated-cond -Wimplicit-function-declaration \
#                           -Wimplicit-int -Wmisleading-indentation -Wpointer-arith -Wwrite-strings -Wold-style-definition \
#                           -Wimplicit-fallthrough=0 -Wmissing-noreturn -Wno-cast-function-type -Wno-constant-logical-operand \
#                           -Wno-long-long -Wno-missing-field-initializers -Wno-overlength-strings -Wno-packed-bitfield-compat \
#                           -Wno-parentheses-equality -Wno-self-assign -Wno-tautological-compare -Wno-unused-parameter \
#                           -Wno-unused-value -Wsuggest-attribute=format -Wsuggest-attribute=noreturn -Wunused-variable -Wundef
#    * strip command:       strip -S -x
#    * install doc:         rdoc
#    * MJIT support:        yes
#    * YJIT support:        no
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
  1) JHPCE_tools/3.0

$ date
Thu Jun 29 03:54:10 PM EDT 2023
$ echo "User: ${USER}"
User: lcollado
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-094.cm.cluster
```
