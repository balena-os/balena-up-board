do_install:append() {
    install -d ${D}/boot/acpi-tables
    install -m 644 ${WORKDIR}/acpi-tables/kernel/firmware/acpi/* ${D}/boot/acpi-tables
}

FILES:${PN} += "/boot/acpi-tables/* "
