DESCRIPTION = "Overwriting unit test for changing cpu frequency from NXP."
LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0-or-later;md5=fed54355545ffd980b814dab4a3b312c"


RDEPENDS:${PN} += "bash"
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
     file://bat-cpufreq-freq-check.sh \
 "

do_install() {
   # Overwriting a unit test provided by NXP that need to be modified for Beacon Platform
    install -d ${D}/unit_tests/BAT
    cp ${WORKDIR}/bat-cpufreq-freq-check.sh      ${D}/unit_tests/BAT/
}

FILES:${PN}  += "/unit_tests/BAT/*"

