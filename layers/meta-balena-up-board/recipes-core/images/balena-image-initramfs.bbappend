IMAGE_ROOTFS_MAXSIZE = "40960"

# reduce rootfs space (by removing these modules from the kernel's initramfs) because with the update to Scarthgap we have an increased rootfs which fails at HUP
PACKAGE_INSTALL:remove = " initramfs-module-recovery"
PACKAGE_INSTALL:remove = " initramfs-module-migrate"
