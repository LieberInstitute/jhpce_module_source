```bash
## Commands used for installing the software

#   BaseSpace CLI v1.7.0 and ICA CLI v2.48.0
wget https://launch.basespace.illumina.com/CLI/latest/amd64-linux/bs
wget https://stratus-documentation-us-east-1-public.s3.amazonaws.com/cli/2.48.0/ica-linux-amd64.zip
unzip ica-linux-amd64.zip
rm ica-linux-amd64.zip
mkdir bin
mv bs linux-amd64/icav2 bin/

#   DRAGEN software mode 4.6.2
# curl -O [private_link]
chmod +x dragen-softwaremode-4.6.2.el8.x86_64.bin
./dragen-softwaremode-4.6.2.el8.x86_64.bin
cp dragen-softwaremode-4.6.2.el8.x86_64/bin/dragen bin/
rm dragen-softwaremode-4.6.2.el8.x86_64.bin

echo 'bin' > .gitignore
echo linux-amd64 >> .gitignore
echo dragen* >> .gitignore

chmod 775 -R ..

## Version control files
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
Tue Sep 29 10:44:31 AM EDT 2026
$ echo "User: ${USER}"
User: neagles
$ echo "Hostname: ${HOSTNAME}"
Hostname: compute-168.cm.cluster
```
