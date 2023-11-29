#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/ecarx/IHU519G

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Assert
TARGET_OTA_ASSERT_DEVICE := IHU519G

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := IHU519G
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/image.gz
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := IHU519G_defconfig
TARGET_KERNEL_SOURCE := kernel/ecarx/IHU519G

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := ecarxp

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE ：= true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_RESETPROP := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_PROVIDES_GPTUTILS := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 155
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_CRYPTO := true

# Logcat
TW_DEVICE_VERSION := beta_1
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# fstab
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab