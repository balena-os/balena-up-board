include resin-image.inc

IMAGE_INSTALL_append += " acpi-tables"

RESIN_BOOT_PARTITION_FILES_append = " \
    grub.cfg_internal:/EFI/BOOT/grub.cfg \
"
