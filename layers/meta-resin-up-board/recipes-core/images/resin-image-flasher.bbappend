include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append_up-board = " \
    grub.cfg_external:/EFI/BOOT/grub.cfg \
    grub.cfg_internal: \
    "
