# inherit from the proprietary version
-include vendor/lge/lu6200/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := lu6200
TARGET_OTA_ASSERT_DEVICE := lu6200,i_lgu

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_lu6200_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/lu6200/kernel

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/lu6200/bluetooth
