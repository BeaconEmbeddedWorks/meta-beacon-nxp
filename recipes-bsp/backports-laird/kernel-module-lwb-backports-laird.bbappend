SUMMARY = "Laird Firmware download for LWB5"
# This is a appendt to copy laird firmware files download from the laird github repository
# otherwise it has to be copied manually and breaks the build if its missing
#
MAINTAINER = "Richard Feliciano <RFeliciano@BeaconEmbedded.com>"


FIRMWARE_URI= "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/LRD-REL-10.4.0.10/"
FIRMWARE_REV="laird-lwb5-fcc-firmware-10.4.0.10.tar.bz2"

do_configure:prepend() {
	#check if laird release directory is present 
	#if create release directory and download firmware

	if [ ! -d "${TOPDIR}/../release" ]; then 
			echo "Adding directory ${TOPDIR}/../release"
			mkdir -p ${TOPDIR}/../release
			echo "Downloading LAIRD firmware $FIRMWARE_REV "
			wget -O ${TOPDIR}/../release/${FIRMWARE_REV} "${FIRMWARE_URI}${FIRMWARE_REV}"
	else
		#check if correct firmware is present 
		#if not download firmware to release directory
		if [ -f "${TOPDIR}/../release/${FIRMWARE_REV}" ]; then
			echo "LAIRD FW is already downloaded"
		else
			echo "Downloading LAIRD firmware ${FIRMWARE_REV}"
			wget -O ${TOPDIR}/../release/${FIRMWARE_REV} "${FIRMWARE_URI}${FIRMWARE_REV}"
		fi
	fi

}


do_compile:prepend() {
    echo "CPTCFG_BT_BNEP=m" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_MC_FILTER=y" >> ${S}/defconfigs/lwb
    echo "CPTCFG_BT_BNEP_PROTO_FILTER=y" >> ${S}/defconfigs/lwb
}

