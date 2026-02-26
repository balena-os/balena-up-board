FILESEXTRAPATHS:append := ":${THISDIR}/files"

HOSTAPP_HOOKS += " \
    99-resin-grub \
    999-resin-boot-cleaner \
"

# This device-type does not have "efi" set in MACHINE_FEATURES,
# however, it installs grub in /mnt/boot/EFI/ and not in /mnt/boot/
# Because hostapp-update-hooks in meta-balena determine
# the grub install path based on MACHINE_FEATURES,
# we need to blacklist this path specifically
# for this device-type.
BALENA_BOOTFILES_BLACKLIST:append = " \
    /EFI/BOOT/grub_extraenv \
"
