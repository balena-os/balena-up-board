include balena-image.inc

IMAGE_INSTALL_append += " acpi-tables"

BALENA_BOOT_PARTITION_FILES_append = " \
    grub.cfg_internal:/EFI/BOOT/grub.cfg \
"

# We subdivide this package for different generations in meta-balena-common,
# so remove linux-firmware-i915
PACKAGE_INSTALL_remove_intel-x86-common = " linux-firmware-i915"

# Up Core and Up Board are Cherry Trail based w/ Gen 8 graphics, no firmware is required

# Up Squared/Pro uses Gemini Lake firmware
PACKAGE_INSTALL_append = " linux-firmware-i915-glk"

# Up Xtreme/Lite uses Kaby Lake firmware
PACKAGE_INSTALL_append = " linux-firmware-i915-kbl"

# Up Xtreme i11 uses Tiger Lake firmware
PACKAGE_INSTALL_append = " linux-firmware-i915-tgl"
