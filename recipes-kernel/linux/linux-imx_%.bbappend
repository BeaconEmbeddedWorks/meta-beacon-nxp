FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://defconfig \
            "

#deltask copy_defconfig

do_configure_append() {

	cp ${TOPDIR}/../sources/meta-beacon-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/.config
        cp ${TOPDIR}/../sources/meta-beacon-nxp/recipes-kernel/linux/linux-imx/defconfig ${B}/../defconfig
}

# Device tree for Beacon i.MX8M mini dev-kit


KERNEL_MODULE_AUTOLOAD_append = " beacon-new-productid"

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
	file://0009-arm64-dts-beacon-imx8mn-kit-Remove-dead-DTS-entries.patch \
	file://0010-arm64-dts-fsl-imx8mn-Enable-dispmix_gpr.patch \
	file://0011-rtc-pcf85263-pcf85363-support-PM-wakeup-device.patch \
	file://0012-arm64-dts-logicpd-imx8mm-kit-Expliticly-set-load.patch \
	file://0013-Update-GPIO-driver-to-somewhat-support-pull-up-bias.patch \
	file://0014-arm64-dts-beacon-imx8mm-baseboard-Enable-GPIO-keypad.patch \
	file://0015-rtc-pcf85363-Add-support-for-NXP-pcf85263-rtc-A.patch \
	file://0016-Removed-modem-reset-which-caused-Laird-Bluetooth-ini.patch \
	file://0017-arm64-dts-beacon-imx8mm-kit-Fix-GPIO-expander-compat.patch \
	file://0018-regulator-Backport-bd718x7-from-NXP-5.4-Kernel.patch \
	file://0019-arm64-dts-beacon-imx8mm-Update-PMIC-entries-to-match.patch \
	file://0020-arm64-dts-beacon-imx8mm-Enable-SPDIF-Audio.patch \
	file://0021-arm64-dts-beacon-imx8mm-kit-Remove-hard-coded-serial.patch \
	file://0022-arm64-dts-beacon-imx8mm-Fix-Camera-power-on-Beta-har.patch \
	file://0023-arm64-dts-Fix-UART-and-SPI-Bus-on-Beta-Hardware.patch \
	"