FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://defconfig \
            "

deltask copy_defconfig

# Device tree for Logic PD i.MX8M mini dev-kit
KERNEL_DEVICETREE = " \
    freescale/logicpd-imx8mm-kit.dtb \
"

KERNEL_MODULE_AUTOLOAD_append = " logicpd-new-productid"

#END_HEADER

SRC_URI += " \
	file://0001-ARM64-dts-lpd-imx8mm-evk-Introduce-Logic-PD-Phoenix-.patch \
	file://0002-ARM64-dts-lpd-imx8mm-evk-Remove-unused-items.patch \
	file://0003-ARM64-dts-lpd-imx8mm-Split-off-SOM-items-from-dev-ki.patch \
	file://0004-ARM64-dts-lpd-imx8mm-Split-the-baseboard-from-devkit.patch \
	file://0005-ARM64-dts-Change-name-of-compatible-flag.patch \
	file://0006-Rename-lpd-imx8mm-to-logicpd-imx8mm-kit.dts.patch \
	file://0007-drm-bridge-Add-support-for-SN65DSI83-DSI-to-LVDS-Bri.patch \
	file://0008-ARM64-dts-lpd-imx8mm-Remove-unused-functions.patch \
	file://0009-ARM64-dts-logicpd-imx8mm-Fix-SDHC2-pin-conflict.patch \
	file://0010-ARM-dts-logicpd-imx8mm-kit-Add-support-for-LVDS-LCD-.patch \
	file://0011-Input-Touchscreen-Add-support-for-ILI2117A.patch \
	file://0012-ARM64-dts-Enable-ili2117a-Touchscreen-controller.patch \
	file://0013-ARM64-dts-Add-MFG-EEPROM-Support.patch \
	file://0014-Misc-eeprom-Enable-Logic-PD-MFG-EEPROM.patch \
	file://0015-ASoC-imx-wm8962-Use-EPROBE_DEFER-if-codec-platform-i.patch \
	file://0016-ARM64-dts-logicpd-imx8mm-kit-Enable-WM8962-audio-cod.patch \
	file://0017-rtc-add-support-for-NXP-PCF85363-real-time-clock.patch \
	file://0018-rtc-pcf85363-add-alarm-support-Handle-alarms-current.patch \
	file://0019-rtc-pcf85363-set-time-accurately.patch \
	file://0020-rtc-pcf85363-Add-support-for-NXP-pcf85263-rtc-Add-su.patch \
	file://0021-ARM64-dts-logicpd-imx8mm-kit-Add-support-for-pcf8526.patch \
	file://0022-gpio-pca953x-add-support-for-pca6416.patch \
	file://0023-ARM64-dts-Fix-GPIO-Expander-compatible-flag.patch \
	file://0024-gpio-pca953x-use-pca953x_read_regs-instead-of-regmap.patch \
	file://0025-ARM64-dts-Fix-GPIO-Expander-compatible-flag.patch \
	file://0026-ARM64-dts-logicpd-imx8mm-kit-Add-LED-support.patch \
	file://0027-HACK-gpio-pca953x-Enable-pull-ups-when-gpio-is-input.patch \
	file://0028-ARM64-dts-Logicpd-imx8mm-kit-Fix-Audio-codec-power.patch \
	file://0029-ARM64-dts-logicpd-imx8mm-kit-Clean-up-regulator-node.patch \
	file://0030-ARM64-dts-logicpd-imx8mm-kit-remove-unwanted-synapti.patch \
	file://0031-ARM-dts-logicod-imx8mm-kit-Move-more-SOM-items-from-.patch \
	file://0032-ARM-dts-logicod-imx8mm-kit-Set-i2c3-to-400KHz.patch \
	file://0033-ARM64-dts-logicpd-imx8mm-kit-Fix-LVDS-mode.patch \
	file://0034-ARM64-dts-logicpd-imx8mm-kit-Enable-PCIe.patch \
	file://0035-Revert-Input-Touchscreen-Add-support-for-ILI2117A.patch \
	file://0036-input-touchscreen-ili210x.patch \
	file://0037-arm64-dts-logicpd-imx8mm-kit-Fix-ILI2117-sleep.patch \
	file://0038-arm64-dts-logicpd-imx8mm-kit-Enable-SPI-EEPROM.patch \
	file://0039-arm64-dts-logicpd-imx8mm-kit-Fix-UART3-Pull-up-errat.patch \
	file://0040-arm64-dts-logicod-imx8mm-kit-Enable-VPU-and-GPU-with.patch \
	file://0041-rtc-pcf85263-pcf85363-support-PM-wakeup-device-impro.patch \
	file://0042-arm64-dts-logicpd-imx8mm-kit-Expliticly-set-load-cap.patch \
	file://0043-arm64-dts-logicpd-imx8mm-kit-changes-for-Laird-wirel.patch \
	"