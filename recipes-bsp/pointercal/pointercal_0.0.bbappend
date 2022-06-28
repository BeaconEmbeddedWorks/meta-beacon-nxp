LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI = "file://pointercal"

do_install() {
	install -d ${D}/etc
	install -m 0644 pointercal ${D}/etc
}

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
