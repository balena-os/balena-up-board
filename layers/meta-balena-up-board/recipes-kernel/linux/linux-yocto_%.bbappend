inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-Revert-random-fix-crng_ready-test.patch"

# HDMI audio support requested by customer
RESIN_CONFIGS_append = " hdmi_sound"
RESIN_CONFIGS[hdmi_sound] = " \
    CONFIG_SND_HDA_INTEL=m \
"

# ATH10K support requested by customer on Up Squared
RESIN_CONFIGS_append = " ath10k_pci"
RESIN_CONFIGS[ath10k_pci] = " \
    CONFIG_ATH10K_PCI=m \
"
RESIN_CONFIGS_DEPS[ath10k_pci] = " \
    CONFIG_ATH10K=m \
"

# requested by customer
RESIN_CONFIGS_append = " ch341"
RESIN_CONFIGS[ch341] = " \
    CONFIG_USB_SERIAL_CH341=m \
"

# required for enabling ACPI SSDTs
RESIN_CONFIGS_append = " acpi_configfs"
RESIN_CONFIGS[acpi_configfs] = " \
	CONFIG_ACPI_CONFIGFS=m \
"

RESIN_CONFIGS_append = " uinput"
RESIN_CONFIGS[uinput] = " \
    CONFIG_INPUT_UINPUT=m \
"
