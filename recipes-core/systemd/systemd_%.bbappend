FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
            file://98-eqos.link \
            file://98-fec.link \
"

do_install:append () {

    # Disable the assignment of the fixed network interface name
    install -Dm 0644 ${WORKDIR}/98-eqos.link ${D}${sysconfdir}/systemd/network/
    install -Dm 0644 ${WORKDIR}/98-fec.link ${D}${sysconfdir}/systemd/network/
}
