#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ovaltine device
$(call inherit-product, device/OnePlus/ovaltine/device.mk)

PRODUCT_DEVICE := ovaltine
PRODUCT_NAME := omni_ovaltine
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PGP110
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_ovaltine-eng 16.1.0 SP2A.220405.004 eng.QQQiuCi.20240609.203111 test-keys"

BUILD_FINGERPRINT := OnePlus/twrp_ovaltine/ovaltine:16.1.0/SP2A.220405.004/QQQiuCi06092030:eng/test-keys
