```bash
## Commands used for installing the software
curl -O https://static.rust-lang.org/dist/rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz
tar -xJf rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz
rm rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz

#   It looks like binaries are already built despite the suggestion to install?
mkdir rust-1.95.0-x86_64-unknown-linux-gnu/bin
mkdir rust-1.95.0-x86_64-unknown-linux-gnu/lib
cp rust-1.95.0-x86_64-unknown-linux-gnu/*/bin/* rust-1.95.0-x86_64-unknown-linux-gnu/bin/
cp rust-1.95.0-x86_64-unknown-linux-gnu/*/lib/*.so* rust-1.95.0-x86_64-unknown-linux-gnu/lib/

## Version control files
echo rust-1.95.0-x86_64-unknown-linux-gnu > .gitignore
chmod -R 775 ..
git add .gitignore
git add README.md
```

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
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0   3) conda/3-24.3.0

 

$ date
Tue May 19 10:21:55 AM EDT 2026
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-099.cm.cluster
```
