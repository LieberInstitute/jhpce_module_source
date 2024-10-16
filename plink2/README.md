# Installation

```bash
## go to https://www.cog-genomics.org/plink/2.0/ and download the latest
## Linux 64-bit Intel development version available there, update the path below:
wget https://s3.amazonaws.com/plink2-assets/plink2_linux_x86_64_20241014.zip
unzip plink2_linux_x86_64_20241014.zip
rm plink2_linux_x86_64_20230829.zip

## Ignore all downloaded/installed files
echo "plink2" > .gitignore

chmod 775 -R .

## Version control files
git add .gitignore
git add README.md
```
