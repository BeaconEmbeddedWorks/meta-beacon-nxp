FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI = " \
    git://github.com/vkmark/vkmark;protocol=https;branch=master \
    file://0001-scenes-Use-depth-format-supported-by-i.MX.patch \
    file://0002-src-meson.build-Prepend-sysroot-for-the-includedir.patch \
    file://0003-meson.build-Enable-native-wayland-scanner.patch \
"
SRCREV = "30d2cd37f0566589d90914501fc7c51a4e51f559"
S = "${WORKDIR}/git"

