FILESEXTRAPATHS_append_up-board := ":${THISDIR}/files"

SRC_URI_append_up-board = " \
    file://grub.cfg_external \
    file://grub.cfg_internal \
    "

do_deploy_append_up-board() {
    install -m 644 ${WORKDIR}/grub.cfg_external ${DEPLOYDIR}
    install -m 644 ${WORKDIR}/grub.cfg_internal ${DEPLOYDIR}
}
