# Copyright (C) 2020 Compass Electronics Group, LLC

DESCRIPTION = "SDMA modue file Beacon EmbeddedWorks kits."
LICENSE = "CLOSED"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
     file://sdma.conf \
 "

do_install() {
   # This file creates an init script that configures terminal and is exectuted at startup

    install -d ${D}${sysconfdir}/modules-load.d/
    install -m 0755    ${WORKDIR}/sdma.conf       ${D}${sysconfdir}/modules-load.d/
}

