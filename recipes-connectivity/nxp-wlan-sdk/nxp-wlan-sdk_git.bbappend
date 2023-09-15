# Copyright LogicPD, Inc. dba Beacon EmbeddedWorks

DESCRIPTION = "i.MX8 Plus Beacon EmbeddedWorks wifi transmit power file update"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://txpower_bcn_US.bin \
	file://txpower_bcn_ETSI.bin \
	"

do_install:append() {
	install -d ${D}${nonarch_base_libdir}/firmware/nxp/
    	cp ${WORKDIR}/*.bin ${D}${nonarch_base_libdir}/firmware/nxp/
}


FILES:${PN} += "${nonarch_base_libdir}/firmware/nxp/*"
