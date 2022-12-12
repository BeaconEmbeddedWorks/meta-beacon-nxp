SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"
DEPENDS += "python3-setuptools-native"

UBOOT_SRC = "git://github.com/BeaconEmbeddedWorks/u-boot-imx.git;protocol=https"
SRCBRANCH = "bcn_lf_v2022.04"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "f016f1f8de24f263199fc5dbb8da2bf936a3b4cb"
