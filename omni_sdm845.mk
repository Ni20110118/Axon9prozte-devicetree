#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sdm845 device
$(call inherit-product, device/zte/sdm845/device.mk)

PRODUCT_DEVICE := sdm845
PRODUCT_NAME := omni_sdm845
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2019 Pro
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm845-user 9 PKQ1.181105.001 669 release-keys"

BUILD_FINGERPRINT := ZTE/GEN_CN_P845A02/P845A02:9/PKQ1.181105.001/20200430.013552:user/release-keys
