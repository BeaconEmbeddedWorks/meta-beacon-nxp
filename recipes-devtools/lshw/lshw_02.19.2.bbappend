# Copyright (C) 2022 Beacon EmbeddedWorks

DESCRIPTION = "i.MX U-Boot suppporting i.MX8 Beacon EmbeddedWorks kits."

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

#END_HEADER

SRC_URI += " \
	file://0001-fix-lshw-when-the-device-is-SDIO_CLASS_NONE.patch \
	"
