FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = "\
		file://brcmfmac43430-sdio.bin \
		file://brcmfmac43430-sdio.txt \
"

FILES_${PN}-bcm43430_append = "\
	${nonarch_base_libdir}/firmware/brcm/brcmfmac43430-sdio.txt \
"

do_install_append() {
    cp ${WORKDIR}/brcmfmac43430-sdio.* ${D}${nonarch_base_libdir}/firmware/brcm/
}

PACKAGES =+ "${PN}-iwlwifi-3160"

FILES_${PN}-iwlwifi-3160 = " \
    /lib/firmware/iwlwifi-3160-17.ucode \
"

PACKAGES =+ "${PN}-ath10k-qca6174"
FILES_${PN}-ath10k-qca6174 = " \
    /lib/firmware/ath10k/QCA6174/* \
"
