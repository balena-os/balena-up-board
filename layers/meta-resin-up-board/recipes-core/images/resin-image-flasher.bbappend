include resin-image.inc

IMAGE_DEPENDS_resinos-img_append_up-board = " core-image-minimal-initramfs:do_rootfs"

RESIN_BOOT_PARTITION_FILES_append_up-board = " \
    core-image-minimal-initramfs-up-board.cpio.gz:/initramfs \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_internal: \
    "
