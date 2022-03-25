FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Patch-SOC-to-support-Beacon-SOCs-iMX8M-Mini-and-Nano.patch \
           "


#IMXBOOT_SRC = "git:///home/logic/beacon-imx/imx-mkimage-5.10;protocol=file"
#SRCBRANCH = "bcn_lf-5.10.72_2.2.0"
#SRC_URI = "${IMXBOOT_SRC};branch=${SRCBRANCH}"
#SRCREV = "618037a58da3ba84054d1a1970d738223f4b87bb"


