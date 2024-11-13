SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"
DEPENDS += "python3-setuptools-native"

UBOOT_SRC = "git://github.com/BeaconEmbeddedWorks/u-boot-imx.git;protocol=https"
SRCBRANCH = "bcn_lf_v2022.04"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "76644c4fb0bb2757dac5db7be418fd539f9ab54a"
