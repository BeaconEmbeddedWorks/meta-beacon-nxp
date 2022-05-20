SUMMARY = "Linux Kernel provided and supported by NXP"
DESCRIPTION = "Linux Kernel provided and supported by NXP with focus on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU, VPU and IPU. \
This recipe now points directly to a custom Beacon Kernel "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

SRCBRANCH = "imx_5.15.y_bcn_mstr"
KERNEL_SRC = "git://github.com/BeaconEmbeddedWorks/linux-imx.git;protocol=https"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "4bfe7f6ee9706703dc627123837a9ba6db1f155b"

#addtask copy_bcn_defconfig after do_patch before do_preconfigure

do_copy_defconfig () {
    install -d ${B}
        # copy latest imx_v8_defconfig to use for mx8
        mkdir -p ${B}

	#if [ ${MACHINE} = "beacon-imx8mp-kit" ]; then
		echo "Replacing config files with bcn_imx8mp_defconfig" 
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/.config
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/../defconfig
	#fi
}
