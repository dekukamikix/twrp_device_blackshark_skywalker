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

# Inherit from skywalker device
$(call inherit-product, device/blackshark/skywalker/device.mk)

PRODUCT_DEVICE := skywalker
PRODUCT_NAME := omni_skywalkerx
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := SKW-A0
PRODUCT_MANUFACTURER := blackshark

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="SKW-A0-user 11 SKYW2203210CN00MR1 V11.0.4.0.JOYUI release-keys"

BUILD_FINGERPRINT := blackshark/SKW-A0/skywalker:11/SKYW2203210CN00MR1/V11.0.4.0.JOYUI:user/release-keys
