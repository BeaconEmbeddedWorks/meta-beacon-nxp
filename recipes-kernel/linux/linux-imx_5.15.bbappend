SUMMARY = "Linux Kernel provided and supported by NXP"
DESCRIPTION = "Linux Kernel provided and supported by NXP with focus on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU, VPU and IPU. \
This recipe now points directly to a custom Beacon Kernel "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

SRCBRANCH = "imx_5.15.y_bcn_mstr-V3"
KERNEL_SRC = "git://git@gitlab.logicpd.com/products/linux-imx-private.git;protocol=ssh"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "e10ff9d03d43a5876f47f86b8fedc341ed55266b"


LOCALVERSION = "-2.1.0"

do_copy_defconfig () {
    install -d ${B}
        # copy latest bcn_imx8m_mn_defconfig or bcn_imx8mp_defconfig to use for mx8
        mkdir -p ${B}

	if [ ${MACHINE} = "beacon-imx8mp-kit" ]; then
		echo "Replacing config files with bcn_imx8mp_defconfig" 
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/.config
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/../defconfig
	else
		echo "Replacing config files with bcn_imx8m_mn_defconfig" 
		cp ${S}/arch/arm64/configs/bcn_imx8m_mn_defconfig ${B}/.config
		cp ${S}/arch/arm64/configs/bcn_imx8m_mn_defconfig ${B}/../defconfig
	fi
}
