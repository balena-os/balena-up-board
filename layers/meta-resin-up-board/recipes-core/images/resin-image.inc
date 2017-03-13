#
# up-board
#

IMAGE_FSTYPES_append_up-board = " resinos-img"

# Do not support live USB stick
NOISO_up-board = "1"
NOHDD_up-board = "1"

# Customize resinos-img
RESIN_IMAGE_BOOTLOADER_up-board = "grub-efi"
RESIN_BOOT_PARTITION_FILES_up-board = " \
    bootx64.efi:/EFI/BOOT/ \
    bzImage-up-board.bin:/vmlinuz \
    "
