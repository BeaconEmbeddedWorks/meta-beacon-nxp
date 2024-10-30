# Copyright LogicPD, Inc. dba Beacon EmbeddedWorks

DESCRIPTION = "i.MX8 Plus Beacon EmbeddedWorks wifi transmit power file update"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#END_HEADER


SRC_URI += " \
        file://0001-Modified-to-build-wifi-for-mlan-utils.patch \
	file://txpower_bcn_US.bin \
	file://txpower_bcn_ETSI.bin \
	file://mlanutl \
	"

do_install:append() {
	install -d ${D}/${datadir}/nxp_wireless
    	install -d ${D}${nonarch_base_libdir}/firmware/nxp/
	install -m 0755  ${WORKDIR}/mlanutl ${D}${datadir}/nxp_wireless
	
    	cp ${WORKDIR}/*.bin ${D}${nonarch_base_libdir}/firmware/nxp/
}


INSANE_SKIP:${PN} += "already-stripped"

FILES:${PN} += "${nonarch_base_libdir}/firmware/nxp/*"
