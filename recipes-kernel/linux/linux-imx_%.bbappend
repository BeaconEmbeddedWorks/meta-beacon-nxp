FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Add-DTS-for-LogicPD-dev-kit.patch \
            file://0001-drm-bridge-Add-support-for-SN65DSI83-DSI-to-LVDS-Bri.patch \
	    file://defconfig \
            "

deltask copy_defconfig

# Device tree for Logic PD i.MX8M mini dev-kit
KERNEL_DEVICETREE = " \
    freescale/logicpd-imx8mm-kit.dtb \
"

