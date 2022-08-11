SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

UBOOT_SRC = "git://github.com/BeaconEmbeddedWorks/u-boot-imx.git;protocol=https"
SRCBRANCH = "bcn_lf_v2021.04"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "b679745aa530bb3b49f45f8d4b7b3f734055ef7a"

