SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"
DEPENDS += "python3-setuptools-native"

UBOOT_SRC = "git://git@gitlab.logicpd.com/products/u-boot.git;protocol=ssh"
SRCBRANCH = "v2023.10-beacon-unified-8mp-loaddadr"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "f4bf67b81314e1599858ddf7e41c58ebab961a50"
