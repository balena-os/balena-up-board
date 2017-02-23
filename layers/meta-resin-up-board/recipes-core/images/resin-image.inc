#
# up-board
#

IMAGE_FSTYPES_append_up-board = " resin-sdcard"

# Make sure we have the resin image and the initramfs ready
IMAGE_DEPENDS_resin-sdcard_append_up-board = " core-image-minimal-initramfs:do_rootfs"

# Do not support live USB stick
NOISO_up-board = "1"
NOHDD_up-board = "1"

# Customize resin-sdcard
RESIN_IMAGE_BOOTLOADER_up-board = "grub-efi"
RESIN_BOOT_PARTITION_FILES_up-board = " \
    core-image-minimal-initramfs-up-board.cpio.gz:/initramfs \
    bootx64.efi:/EFI/BOOT/ \
    bzImage-up-board.bin:/vmlinuz \
    "
