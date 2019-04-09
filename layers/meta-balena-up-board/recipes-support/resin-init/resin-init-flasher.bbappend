# On UP board, we flash on internal device
INTERNAL_DEVICE_KERNEL_up-board = "mmcblk0"

# the name of the bootloader config file to be written to internal media
INTERNAL_DEVICE_BOOTLOADER_CONFIG_up-board = "grub.cfg_internal"

# the pathname (relative to /boot/) where the internal bootloader config file should reside in
# (currently assuming this is on partition 1 of the internal media)
INTERNAL_DEVICE_BOOTLOADER_CONFIG_PATH_up-board = "/EFI/BOOT/grub.cfg"
