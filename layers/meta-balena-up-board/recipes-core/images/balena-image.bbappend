include balena-image.inc

IMAGE_INSTALL:append = " acpi-tables"

BALENA_BOOT_PARTITION_FILES:append = " \
    grub.cfg_internal:/EFI/BOOT/grub.cfg \
"
