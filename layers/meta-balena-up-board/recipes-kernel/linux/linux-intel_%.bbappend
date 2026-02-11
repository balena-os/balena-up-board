inherit kernel-resin

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# HDMI audio support requested by customer
BALENA_CONFIGS:append = " hdmi_sound"
BALENA_CONFIGS[hdmi_sound] = " \
    CONFIG_SND_HDA_INTEL=m \
"

# ATH10K support requested by customer on Up Squared
BALENA_CONFIGS:append = " ath10k_pci"
BALENA_CONFIGS[ath10k_pci] = " \
    CONFIG_ATH10K_PCI=m \
"
BALENA_CONFIGS_DEPS[ath10k_pci] = " \
    CONFIG_ATH10K=m \
"

# requested by customer
BALENA_CONFIGS:append = " ch341"
BALENA_CONFIGS[ch341] = " \
	CONFIG_USB_SERIAL_CH341=m \
"

# required for enabling ACPI SSDTs
BALENA_CONFIGS:append = " acpi_configfs"
BALENA_CONFIGS[acpi_configfs] = " \
	CONFIG_ACPI_CONFIGFS=m \
"

# This device type has been using the aufs storage driver,
# and during a HUP the storage in the inactive sysroot will
# still be aufs, so we need to include the aufs driver going
# further for it, as per the internal thread:
# https://www.flowdock.com/app/rulemotion/resin-devices/threads/K2TQiSUfNDqBT5Ih6cciNI2d9QJ
BALENA_CONFIGS:append:up-board = " aufs"

BALENA_CONFIGS:append = " optimize-size"
BALENA_CONFIGS[optimize-size] = " \
    CONFIG_CC_OPTIMIZE_FOR_SIZE=y \
"

# disable DVB in order to save space (if anybody needs this it can be added from the container)
BALENA_CONFIGS:append = " disable_dvb"
BALENA_CONFIGS[disable_dvb] = " \
    CONFIG_DVB_CORE=n \
"

# build i915 as module so that it can load the GPU firmware from the final rootfs
# (if i915 is built-in then it will try to load it from the initramfs and fail because the GPU firmware is not in the initramfs)
BALENA_CONFIGS:append = " i915_module"
BALENA_CONFIGS[i915_module] = " \
    CONFIG_DRM_I915=m \
"
