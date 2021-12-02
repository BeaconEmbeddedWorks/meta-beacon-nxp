SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

UBOOT_SRC = "git://github.com/BeaconEmbeddedWorks/u-boot-imx.git;protocol=git"
SRCBRANCH = "bcn_lf_v2021.04_mstr"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "93dec7a80410c210bb03dc13d9dd09ff11cfc393"



