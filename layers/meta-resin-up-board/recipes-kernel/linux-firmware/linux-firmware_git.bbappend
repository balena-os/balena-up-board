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
