SUMMARY = "Linux Kernel provided and supported by NXP"
DESCRIPTION = "Linux Kernel provided and supported by NXP with focus on \
i.MX Family Reference Boards. It includes support for many IPs such as GPU, VPU and IPU. \
This recipe now points directly to a custom Beacon Kernel "
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"

#SRCBRANCH = "imx_5.10.y_bcn_mstr"
#KERNEL_SRC = "git://github.com/BeaconEmbeddedWorks/linux-imx.git;protocol=git"
#SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "92890bc650376abf9274d7999db98ed8e31df7f1"

#SRCBRANCH = "feature/laird_lwb5"
#KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
#SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "1c76d5466db17af96c020568401c0cd233123424"


#SRCBRANCH = "feature/imx8mm_mn_ftc"
#KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
#SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "1c76d5466db17af96c020568401c0cd233123424"
#-working-SRCREV = "3d23f40947970f189c1212b02209082ca03a268f"

#SRCBRANCH = "feature/laird_test_defconfig"
#KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
# = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "9df4fb198a2bb341b93aa6ad441f4de6b9bd4a85"


#SRCBRANCH = "imx_5.10.y_bcn_mstr"
#KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
#SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "765adee86dc067c4b70736442a6aaf4eef9c5e71"

#SRCBRANCH = "bugfix/griffin-misc-fixes"
#KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
#SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
#SRCREV = "074a48cae35e4b8e74703049788cd0d99333706e"

SRCBRANCH = "bugfix/defconfig"
KERNEL_SRC = "git:///home/logic/beacon-imx/linux-imx-5.10.y;protocol=file"
SRC_URI = "${KERNEL_SRC};branch=${SRCBRANCH}"
SRCREV = "d3ee3d7ddd9908a49fa64a3144932dfb04abfa9c"


#addtask copy_bcn_defconfig after do_patch before do_preconfigure

do_copy_defconfig () {
    install -d ${B}
        # copy latest imx_v8_defconfig to use for mx8
        mkdir -p ${B}

	if [ ${MACHINE} = "beacon-imx8mp-kit" ]; then
		echo "Replacing config files with bcn_imx8mp_defconfig" 
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/.config
		cp ${S}/arch/arm64/configs/bcn_imx8mp_defconfig ${B}/../defconfig
		#cp ${S}/arch/arm64/configs/bcn_v8_defconfig ${B}/.config_bcn
		#cp ${S}/arch/arm64/configs/bcn_v8_defconfig ${B}/../defconfig_bcn
	else 
		echo "Replacing config files with bcn_imx8mm_mn_defconfig" 
		cp ${S}/arch/arm64/configs/bcn_imx8mm_mn_defconfig ${B}/.config
        	cp ${S}/arch/arm64/configs/bcn_imx8mm_mn_defconfig ${B}/../defconfig

	fi

	#cp ${S}/arch/arm64/configs/bcn_imx8mm_mn_defconfig ${B}/.config
        #cp ${S}/arch/arm64/configs/bcn_imx8mm_mn_defconfig ${B}/../defconfig
}
