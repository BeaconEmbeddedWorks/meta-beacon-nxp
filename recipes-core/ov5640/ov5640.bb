# Copyright (C) 2022 Logic PD, Inc dba Beacon EmbeddedWorks

DESCRIPTION = "Script to load camera in proper order"
LICENSE = "CLOSED"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
     file://camera.conf \
 "

do_install() {
   # This file creates an init script that configures terminal and is exectuted at startup

    install -d ${D}${sysconfdir}/modules-load.d/
    install -m 0755    ${WORKDIR}/camera.conf       ${D}${sysconfdir}/modules-load.d/
}

