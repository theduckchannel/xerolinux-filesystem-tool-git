#!/bin/bash

PKGNAME="xerolinux-filesystem-tool-git"
BINARY="xerolinux-filesystem-tool"
CURRENT_DIR=$(pwd)
OLDVERSION=$(grep '^current_version.*' $BINARY)
echo "Old Version ====> $OLDVERSION"
#####
# New Version Dialog
read -p "Enter with new version: " NEWVERSION
sed -i "s/^pkgver=.*/pkgver=$NEWVERSION/" PKGBUILD
sed -i "s/^current_version.*/current_version = '$NEWVERSION'/" $BINARY
#####
git add -A
git commit -m "release $NEWVERSION"
git tag -a $NEWVERSION -m "release $NEWVERSION"
git push
echo "Everything ok $NEWVERSION released!"
echo "......."
cd $CURRENT_DIR


./install.sh

