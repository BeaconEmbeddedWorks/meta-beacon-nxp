SRCBRANCH = "lf-5.15.32_2.0.0"
SRCREV = "31800f43a6ee562f412d2301bb0c7e7d0c129231"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://0001-Remove-the-ignore-regulatory-command-from-wifi-drive.patch \
	"
