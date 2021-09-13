#!/bin/bash

paru --noconfirm -Syyu
paru --noconfirm -S python-pyqt5 python-qdarkstyle python-psutil xerolinux-rollback-git
makepkg -si


rm -rf {src,pkg,xerolinux-filesystem-tool-git*}





