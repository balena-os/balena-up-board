CONNECTIVITY_FIRMWARES_append = " linux-firmware-bcm43430 linux-firmware-iwlwifi-3160"
CONNECTIVITY_FIRMWARES_append = " linux-firmware-ath10k-qca6174"

# we need to clean-up rootfs space so let's remove some unused firmware
CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wl12xx"
CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wl18xx"
CONNECTIVITY_FIRMWARES_remove = "linux-firmware-wlcommon"
