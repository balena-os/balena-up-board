CONNECTIVITY_FIRMWARES:append = " linux-firmware-bcm43430 linux-firmware-iwlwifi-3160"
CONNECTIVITY_FIRMWARES:append = " linux-firmware-ath10k-qca6174"

# we need to clean-up rootfs space so let's remove some unused firmware
CONNECTIVITY_FIRMWARES:remove = "linux-firmware-wl12xx"
CONNECTIVITY_FIRMWARES:remove = "linux-firmware-wl18xx"
CONNECTIVITY_FIRMWARES:remove = "linux-firmware-wlcommon"
