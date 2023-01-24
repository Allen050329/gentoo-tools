# update for Gentoo
my Gentoo updating script

# Usage
```
update [options]
    -h,--help				show this help message and exit
    -u				update @world
    -U				update @world and the kernel
    -b				update @world with --emptytree
    -B				update @world with --emptytree and update the kernel
    -j,--jobs			override kernel build job count (Default is in make.conf)
    -s,--sync			sync portage before updating
    -k,--kernel			rebuild the current kernel
    -N,--no-GRUB		call bootloader.sh instead of grub-mkconfig
    -m,--menuconfig		call make menuconfig before building the kernel
    -i,--no-initramfs		do not call dracut after building the kernel
    -D,--defconfig		call make defconfig instead of make olddefconfig
    -K,--custom-kernel-building	call ckb.sh instead of building the kernel via build_rest

    -a,--add-repo name=<repo-name> url=<repo-url> [Sync=<sync type>] :
        name=<repo-name>			name of repo locally
        url=<repo-url>			link to repo
        Sync=<sync-type>			how to sync, defaults to git
```