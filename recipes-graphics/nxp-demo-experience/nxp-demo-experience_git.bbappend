FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://demos.json"

do_install:append() {
	install -D -m 0755    ${WORKDIR}/demos.json   ${D}/home/root/.nxp-demo-experience/demos.json
}
