inherit kernel-resin
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = " \
        file://0002-NFLX-2019-001-SACK-Panic.patch \
        file://0003-NFLX-2019-001-SACK-Panic-for-lteq-4.14.patch \
        file://0004-NFLX-2019-001-SACK-Slowness.patch \
        file://0005-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
        file://0006-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
"

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
