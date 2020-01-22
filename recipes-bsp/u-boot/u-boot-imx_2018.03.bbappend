# Copyright (C) 2019 Logic PD

DESCRIPTION = "i.MX U-Boot suppporting i.MX8 Logic PD kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-ARM-imx8mm-Add-support-for-Logic-PD-i.MX8M-Mini-dev-.patch \
	file://0002-Enable-USB-host-mode-in-u-boot.patch \
	file://0003-drivers-ddr-imx8m-Reduce-chatter-during-startup.patch \
	file://0004-arm64-dts-logicpd-imx8mm-kit-Point-flexspi-to-proper.patch \
	"