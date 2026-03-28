SUMMARY = "ON Semiconductor AP1302 ISP firmware for AR0144 camera sensor"
DESCRIPTION = "Firmware files for the AP1302 camera ISP used with the AR0144 image sensor"
LICENSE = "Proprietary"
LIC_FILES_CHKSUM = "file://AP1302%20Software%20License%20Agreement.pdf;md5=d10282f155f2c17fd5ce100c459c3c84"

SRC_URI = "git://github.com/ONSemiconductor/ap1302_binaries.git;protocol=https;branch=main"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

inherit allarch

do_install() {
    install -d ${D}${nonarch_base_libdir}/firmware/imx/camera
    install -m 0644 ${S}/NXP_i.MX93/ap1302_60fps_ar0144_27M_2Lane_awb_tuning.bin ${D}${nonarch_base_libdir}/firmware/imx/camera/
    install -m 0644 ${S}/generic/AP1302-REV2-AR0144-CRA0-SunexDSL945D-670-F2.5-Bayer.bin ${D}${nonarch_base_libdir}/firmware/imx/camera/ap1302.fw
}

FILES:${PN} = "${nonarch_base_libdir}/firmware/imx/camera/"
