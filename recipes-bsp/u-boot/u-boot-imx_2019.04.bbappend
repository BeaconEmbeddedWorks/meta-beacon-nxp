# Copyright (C) 2020 Beacon EmbeddedWorks

DESCRIPTION = "i.MX U-Boot suppporting i.MX8 Beacon EmbeddedWorks kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-board-beacon-Add-support-for-Beacon-s-imx8m-Nano-Kit.patch \
	file://0002-Add-copying-mkimage_uboot-to-NXP-s-version-of-mkimag.patch \
	file://0004-Limit-Nano-to-1GB-of-RAM.patch \
	file://0005-arm64-dts-beacon-imx8mn-kit-Fix-PMIC-node-for-2019.0.patch \
	file://0006-Convert-printf-statements-to-debug-to-quiet-chatter.patch \
	file://0007-board-imx8mm-Introduce-Beacon-i.MX8MM-Dev-kit.patch \
	file://0008-board-imx8mm_beacon-Fix-USB-Support.patch \
	file://0009-board-imx8mn_beacon-Fix-USB-Support.patch \
	file://0010-configs-imx8mm_beacon-Fix-mmc-booting-using-uuid.patch \
	file://0011-arm64-dts-beacon-imx8mm-8mn-Fix-MMC-voltage-corrupti.patch \
	file://0012-beacon_imx8mm-Enable-GPIO-Expanders.patch \
	file://0013-configs-beacon_imx8mm-Enable-support-for-fspi-bootin.patch \
	file://0014-driver-ddr-imx-correct-the-pwrctl-setting-of-selfref.patch \
	file://0015-board-beacon_imx8mn-Support-FSPI-Booting.patch \
	file://0016-board-imx8m-n-beacon-Add-scripts-to-generate-proper-.patch \
	file://0017-board-imx8m-n-beacon-Fix-scripts-to-generate-proper-.patch \
	file://0018-board-beacon-imx8mn-Change-the-name-imx8mn-beacon-bo.patch \
	file://0019-board-beacon-imx8mm-n-Fix-video-enable-on-poweron.patch \
	file://0020-board-beacon-imx8m-n-Force-MMC-Environment-to-eMMC-a.patch \
	file://0021-board-imx8m-n-beacon-Enable-RAMDisk-booting.patch \
	file://0022-imx-beacon-imx8mn-Update-RAM-timings.patch \
	file://0023-imx8mm_beacon-Update-DTB-for-I-Temp-vs-C-Temp-parts.patch \
	file://0024-arm64-dts-beacon-imx8m-boards-Address-400KHz-I2C-Err.patch \
	"