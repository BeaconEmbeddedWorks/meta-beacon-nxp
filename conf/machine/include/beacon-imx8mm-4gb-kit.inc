MACHINEOVERRIDES =. "imx-boot-container:mx8:mx8m:mx8mm:"

require conf/machine/include/imx-base.inc
require conf/machine/include/arm/armv8a/tune-cortexa53.inc

MACHINE_FEATURES += "pci wifi bluetooth"

UBOOT_DTB_NAME = "${KERNEL_DEVICETREE_BASENAME}-kit.dtb"

IMX_DEFAULT_BOOTLOADER_use-nxp-bsp = "u-boot-imx"
IMX_DEFAULT_BOOTLOADER_use-mainline-bsp = "u-boot-fslc"

UBOOT_SUFFIX = "bin"

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "imx8mm_4g_beacon_defconfig,sdcard"
#UBOOT_CONFIG[fspi] = "beacon_imx8mm_fspi_defconfig"
SPL_BINARY = "spl/u-boot-spl.bin"

ATF_PLATFORM = "imx8mm"
ATF_LOAD_ADDR = "0x920000"

# Extra firmware package name, that is required to build boot container for fslc bsp
IMX_EXTRA_FIRMWARE = "firmware-imx-8m"

IMXBOOT_TARGETS = "${@bb.utils.contains('UBOOT_CONFIG', 'fspi', '${IMXBOOT_TARGETS_BASENAME}_flexspi', '${IMXBOOT_TARGETS_BASENAME}', d)}"

IMX_BOOT_SOC_TARGET = "iMX8MM"

SERIAL_CONSOLES = "115200;ttymxc1"

LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = "all"
IMX_BOOT_SEEK = "33"

OPTEE_BIN_EXT = "8mm"
TEE_LOAD_ADDR = "0xbe000000"

BBMASK:mx8mm-nxp-bsp += "recipes-connectivity/nxp-wlan-sdk/nxp-wlan-sdk_git"
BBMASK:mx8mm-nxp-bsp += "recipes-kernel/kernel-modules/kernel-module-nxp89xx"
