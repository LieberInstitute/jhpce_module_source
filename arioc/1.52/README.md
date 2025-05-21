```bash
## Commands used for installing the software

wget https://github.com/RWilton/Arioc/releases/download/v1.52/Arioc.x.152.zip
unzip Arioc.x.152.zip
rm Arioc.x.152.zip

cd src
make AriocE
make AriocP
make AriocU
cd ..

echo 'src' > .gitignore
echo 'bin' >> .gitignore

chmod 775 -R ..

## Version control files
git add .gitignore
git add README.md
```

```bash
## Evaluate the following commands
$ module list

Currently Loaded Modules:
  1) JHPCE_ROCKY9_DEFAULT_ENV   2) JHPCE_tools/3.0

 

$ date
Wed May 21 10:16:20 AM EDT 2025
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-126.cm.cluster
```
