do_install_append() {
    install -d ${D}/boot/acpi-tables
    install -m 644 ${WORKDIR}/acpi-tables/kernel/firmware/acpi/* ${D}/boot/acpi-tables
}

FILES_${PN} += "/boot/acpi-tables/* "
