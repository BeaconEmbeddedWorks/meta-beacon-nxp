FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://defconfig \
            "

#deltask copy_defconfig

do_configure_append() {

#	cp ${THISDIR}/../../../../../meta-logicpd-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/.config
#       cp ${THISDIR}/../../../../../meta-logicpd-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/../defconfig
	cp ${TOPDIR}/../sources/meta-logicpd-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/.config
        cp ${TOPDIR}/../sources/meta-logicpd-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/../defconfig
}

# Device tree for Logic PD i.MX8M mini dev-kit
#KERNEL_DEVICETREE = " \
#    freescale/logicpd-imx8mm-kit.dtb \
#"KERNEL_DEVICETREE = " \#
#    freescale/beacon-imx8mm-kit.dtb  \
#"

KERNEL_MODULE_AUTOLOAD_append = " logicpd-new-productid"

#END_HEADER

SRC_URI += " \
	file://0001-Port-LogicPD-imx8mm-kit-to-4.19.patch \
	file://0002-ARM64-dts-Introduce-Beacon-EmbeddedWorks-i.MX8M-Nano.patch \
	file://0003-Adding-device-tree-files-that-use-the-new-Beacon-nam.patch \
	file://0004-Updated-copyright-info.patch \
	file://0005-input-touchscreen-ili210x.patch \
	file://0006-arm64-dts-beacon-imx8mm-kit-Fix-ILI2117-sleep.patch \
	file://0007-ASoC-imx-wm8962-Use-EPROBE_DEFER-if-codec-platform-i.patch \
	file://0008-arm64-dts-beacom-imx8mn-kit-Enable-ILI2117-touchscre.patch \
	"
