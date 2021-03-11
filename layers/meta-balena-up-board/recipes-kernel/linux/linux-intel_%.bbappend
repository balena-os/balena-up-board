inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-Revert-random-fix-crng_ready-test.patch \
	    file://0002-Revert-gpiolib-allow-gpio-irqchip-to-map-irqs-dynami.patch \
	    file://0003-Revert-gpiolib-drop-irq_base-field-from-gpio_chip-st.patch \
"

# HDMI audio support requested by customer
BALENA_CONFIGS_append = " hdmi_sound"
BALENA_CONFIGS[hdmi_sound] = " \
    CONFIG_SND_HDA_INTEL=m \
"

# ATH10K support requested by customer on Up Squared
BALENA_CONFIGS_append = " ath10k_pci"
BALENA_CONFIGS[ath10k_pci] = " \
    CONFIG_ATH10K_PCI=m \
"
BALENA_CONFIGS_DEPS[ath10k_pci] = " \
    CONFIG_ATH10K=m \
"

# requested by customer
BALENA_CONFIGS_append = " ch341"
BALENA_CONFIGS[ch341] = " \
	CONFIG_USB_SERIAL_CH341=m \
"

# required for enabling ACPI SSDTs
BALENA_CONFIGS_append = " acpi_configfs"
BALENA_CONFIGS[acpi_configfs] = " \
	CONFIG_ACPI_CONFIGFS=m \
"
