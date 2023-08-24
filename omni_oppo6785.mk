#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from oppo6785 device
$(call inherit-product, device/alps/oppo6785/device.mk)

PRODUCT_DEVICE := oppo6785
PRODUCT_NAME := omni_oppo6785
PRODUCT_BRAND := alps
PRODUCT_MODEL := oppo6785
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_oppo6785-user 11 RP1A.200720.011 1614320228960 release-keys"

BUILD_FINGERPRINT := alps/vnd_oppo6785/oppo6785:11/RP1A.200720.011/1614320228960:user/release-keys
