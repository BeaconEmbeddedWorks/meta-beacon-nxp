
SUMMARY = "Laird Firmware install "
DESCRIPTION = "installs the latest laird  firmware "
AUTHOR = "BeaconEmbedded"
DEPENDS = ""
LICENSE = "CLOSED"

LRD_FW_PN = "lwb5-fcc-firmware"
LRD_FW_REV = "8.5.0.7"

LRD_URI_LOCAL = "file://${TOPDIR}/../release"
SRC_URI += "${LRD_URI_LOCAL}/laird-${LRD_FW_PN}-${LRD_FW_REV}.tar.bz2"

do_install() {
	install -d ${D}${base_libdir}/firmware/brcm
	cp -r --no-dereference --preserve=mode,links -v ${WORKDIR}${base_libdir}/firmware/* ${D}/${base_libdir}/firmware 
	ln  -s -r ${WORKDIR}${base_libdir}/firmware/brcm/brcmfmac4339-sdio-prod.bin ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mm-beacon-kit.bin 
	ln  -s -r ${WORKDIR}${base_libdir}/firmware/brcm/brcmfmac4339-sdio-fcc.txt ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mm-beacon-kit.txt 
}

FILES:${PN} = "${base_libdir}/firmware/brcm/*"



