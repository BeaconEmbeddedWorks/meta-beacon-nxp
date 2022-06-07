SUMMARY = "Laird Firmware install "
DESCRIPTION = "installs the latest laird  firmware "
AUTHOR = "BeaconEmbedded"
DEPENDS = ""
LICENSE = "CLOSED"

FW_FILE = "/firmware/brcm/brcmfmac4339-sdio-prod_v6.37.39.134.bin"
FCC_FW_FILE = "/firmware/brcm/brcmfmac4339-sdio-fcc.txt"

do_install:append() {
	# make links to firmware with correct name so driver finds firmware

	install -d ${D}${base_libdir}/firmware/brcm
	cp -r --no-dereference --preserve=mode,links -v ${WORKDIR}${base_libdir}/firmware/* ${D}/${base_libdir}/firmware  
		
	if [ ${MACHINE} = "beacon-imx8mn-kit" ]; then
		ln  -s -r ${WORKDIR}${base_libdir}${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mn-beacon-kit.bin 
		ln  -s -r ${WORKDIR}${base_libdir}${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mn-beacon-kit.txt
	else
		ln  -s -r ${WORKDIR}${base_libdir}${FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mm-beacon-kit.bin 
		ln  -s -r ${WORKDIR}${base_libdir}${FCC_FW_FILE} ${D}/${base_libdir}/firmware/brcm/brcmfmac4339-sdio.beacon,imx8mm-beacon-kit.txt
	fi
}



