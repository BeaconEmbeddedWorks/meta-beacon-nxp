SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"
DEPENDS += "python3-setuptools-native"

UBOOT_SRC = "git://git@gitlab.logicpd.com/products/u-boot.git;protocol=ssh"
SRCBRANCH = "v2023.10-beacon-unified"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "8754ad82715b627dea7aba3180c388e8a9fcbf40"
