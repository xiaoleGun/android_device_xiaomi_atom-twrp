#
# Copyright (C) 2023 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from atom device makefile.
$(call inherit-product, device/xiaomi/atom/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := atom
PRODUCT_NAME := twrp_atom
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10X
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_RELEASE_NAME := atom
