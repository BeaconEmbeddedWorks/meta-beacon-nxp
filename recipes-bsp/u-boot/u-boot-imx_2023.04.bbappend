SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"
DEPENDS += "python3-setuptools-native"

UBOOT_SRC = "git://git@gitlab.logicpd.com/products/u-boot.git;protocol=ssh"
SRCBRANCH = "v2023.10-beacon-unified"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "30bdbfe903f94292a5c993264c5279b43898913c"
