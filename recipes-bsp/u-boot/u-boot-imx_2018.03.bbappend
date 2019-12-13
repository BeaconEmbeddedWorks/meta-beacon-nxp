# Copyright (C) 2019 Logic PD

DESCRIPTION = "i.MX U-Boot suppporting i.MX8 Logic PD kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-ARM-imx8mm-Add-support-for-Logic-PD-i.MX8M-Mini-dev-.patch \
	file://0002-Re-enable-the-GPIO-expander.patch \
	"