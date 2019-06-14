#
# Up boards (up-board, up-core, up-squared)
#

IMAGE_FSTYPES_append = " resinos-img"

# Do not support live USB stick
NOISO = "1"
NOHDD = "1"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER = "grub-efi"
RESIN_BOOT_PARTITION_FILES = " \
    grub-efi-bootx64.efi:/EFI/BOOT/bootx64.efi \
    bzImage${KERNEL_INITRAMFS}-${MACHINE}.bin:/vmlinuz \
    "

IMAGE_INSTALL_append = " \
    ampak-bt \
"
