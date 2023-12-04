#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := IHU519G

# 引用默认的编译配置文件，core_64_bit必须先于其他引用，否则不生效
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from IHU519G device
$(call inherit-product, device/ecarx/IHU519G/device.mk)

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)


PRODUCT_DEVICE := IHU519G
PRODUCT_NAME := omni_IHU519G
PRODUCT_BRAND := ecarx
PRODUCT_MODEL := FS11A1
PRODUCT_MANUFACTURER := ecarx

PRODUCT_GMS_CLIENTID_BASE := android-ecarx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="IHU519G-user 9 PQ2A.190405.003 293 dev-keys"

BUILD_FINGERPRINT := ecarx/IHU519G/IHU519G:9/PQ2A.190405.003/293:user/dev-keys

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
