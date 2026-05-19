```bash
## Commands used for installing the software
curl -O https://static.rust-lang.org/dist/rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz
tar -xJf rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz
rm rust-1.95.0-x86_64-unknown-linux-gnu.tar.xz

cd rust-1.95.0-x86_64-unknown-linux-gnu
./install.sh --prefix=/jhpce/shared/libd/core/rust/1.95.0
cd ..

## Version control files
echo rust-1.95.0-x86_64-unknown-linux-gnu > .gitignore
echo bin >> .gitignore
echo lib >> .gitignore
echo libexec >> .gitignore
echo etc >> .gitignore
echo share >> .gitignore
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
