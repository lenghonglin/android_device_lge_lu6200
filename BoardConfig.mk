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

#fstab fix
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB = device/lge/lu6200/fstab.iprj
RECOVERY_FSTAB_VERSION := 2

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/lge/lu6200

# cpu fix
TARGET_CPU_VARIANT := cortex-a8
TARGET_ARCH_VARIANT_CPU := cortex-a8

TARGET_NO_HW_VSYNC := true

BOARD_EGL_NEEDS_LEGACY_FB := true

#Enable use of retire fence from MDP driver
TARGET_DISPLAY_USE_RETIRE_FENCE := true
