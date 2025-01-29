SUMMARY = "Linux Kernel provided and supported by NXP"
DESCRIPTION = "Linux Kernel provided and supported by NXP with focus on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU, VPU and IPU. \
This recipe now points directly to a custom Beacon Kernel "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"


SRCBRANCH = "bcn-lf-6.1.1"
LOCALVERSION = "-lts-6.1.55"

KERNEL_SRC = "git://git@gitlab.logicpd.com/products/linux-imx-private.git;protocol=ssh"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "64652a29daae97f032a15d4899cb768d6e897532"

