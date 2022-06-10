SUMMARY = "U-Boot provided and supported by Beacon"
DESCRIPTION = "i.MX U-Boot suppporting i.MX8M based boards "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

UBOOT_SRC = "git://github.com/BeaconEmbeddedWorks/u-boot-imx.git;protocol=https"
SRCBRANCH = "bcn_lf_v2021.04"
SRC_URI = "${UBOOT_SRC};branch=${SRCBRANCH}"
SRCREV = "8398b630bab96ae6c057d21715ad79a6a327cce7"

