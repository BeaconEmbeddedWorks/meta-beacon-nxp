
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

ERROR_QA:remove = "patch-status"

SRC_URI:append = " file://0001-test-bat-Fix-A53-core-name-on-8MM-8MN-and-8MP.patch"
