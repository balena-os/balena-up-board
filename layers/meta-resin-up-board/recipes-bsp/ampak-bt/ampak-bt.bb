SUMMARY = "Firmware and systemd service for Ampak AP6214A (based on Broadcom chip)"

LICENSE = "GPL-2.0+"

S = "${WORKDIR}"

LIC_FILES_CHKSUM = "file://copyright;md5=4deeb5335c3829f7adde42095c21dbf5"

inherit systemd

SYSTEMD_SERVICE_${PN} = "firmware-ampak-ap6214a.service"

SRC_URI = "file://firmware-ampak-ap6214a.service \
	   file://BCM43430A1.hcd \
	   file://copyright \
"

do_install () {
    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/firmware-ampak-ap6214a.service ${D}${systemd_unitdir}/system/
    install -d ${D}${sysconfdir}/firmware
    install -m 0644 ${WORKDIR}/BCM43430A1.hcd ${D}/${sysconfdir}/firmware/
}
