do_install:append() {
    # don't enable random mac address generation when scanning for WiFi
    cat >> ${D}${sysconfdir}/NetworkManager/NetworkManager.conf <<EOF

[device]
wifi.scan-rand-mac-address=no
EOF
}
