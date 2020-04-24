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
	"