# Copyright (C) 2019 Logic PD

DESCRIPTION = "i.MX U-Boot suppporting i.MX8 Logic PD kits."

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-LogicPD-defconfig-for-imx8.patch \
	    file://0002-Add-Logicpd-dts-file-for-imx8.patch \
            "
