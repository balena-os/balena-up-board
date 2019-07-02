inherit kernel-resin

# requested by customer
RESIN_CONFIGS_append = " ch341"
RESIN_CONFIGS[ch341] = " \
	CONFIG_USB_SERIAL_CH341=m \
"
