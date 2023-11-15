FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://can0.network \
    file://can1.network \
"

FILES:${PN} += " \
    ${sysconfdir}/systemd/network/can0.network \
    ${sysconfdir}/systemd/network/can1.network \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/can0.network ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/can1.network ${D}${sysconfdir}/systemd/network
}