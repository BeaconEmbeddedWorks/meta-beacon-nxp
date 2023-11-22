SUMMARY = "Linux Kernel provided and supported by NXP"
DESCRIPTION = "Linux Kernel provided and supported by NXP with focus on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU, VPU and IPU. \
This recipe now points directly to a custom Beacon Kernel "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

SRCBRANCH = "bcn-lf-6.1.1-merge-nano-fixes"
KERNEL_SRC = "git://git@gitlab.logicpd.com/products/linux-imx-private.git;protocol=ssh"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "04579d95c87cc61a9b7a5ec6a0eb605d781aded6"


LOCALVERSION = "-3.0.0"

do_copy_defconfig () {
    install -d ${B}
        # copy latest bcn_imx8m_mn_defconfig or bcn_imx8mp_defconfig to use for mx8
        mkdir -p ${B}

#	if [ ${MACHINE} = "beacon-imx8mp-kit" ]; then
#		echo "Replacing config files with bcn_imx8mp_defconfig" 
#		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/.config
#		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/../defconfig
#	else
#		echo "Replacing config files with bcn_imx8m_mn_defconfig" 
#		cp ${S}/arch/arm64/configs/bcn_imx8m_mn_defconfig ${B}/.config
#		cp ${S}/arch/arm64/configs/bcn_imx8m_mn_defconfig ${B}/../defconfig
#	fi
}
