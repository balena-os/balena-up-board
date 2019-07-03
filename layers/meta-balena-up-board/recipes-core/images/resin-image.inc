#
# Up boards (up-board, up-core, up-core-plus, up-squared)
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

# add to rootfs the firmware for Ampak AP6214a and AP6355 Wireless/Bluetooth
IMAGE_INSTALL_append += " ampak-firmware"
