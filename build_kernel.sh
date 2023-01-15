#!/bin/bash
set -e

if [ -z "$1" ]
then
    JOBS=$(nproc)
else
    JOBS=$1
fi

cd /usr/src/linux
make olddefconfig
make menuconfig
make -j$JOBS modules_prepare
make -j$JOBS prepare
make -j$JOBS
make modules_install
make install
emerge @module-rebuild
# dracut -Hf --regenerate-all
# grub-mkconfig -o /boot/grub/grub.cfg
