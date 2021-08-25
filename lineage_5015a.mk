#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from k-touch i9 device
$(call inherit-product, device/tcl/5015a/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/lineage/config/common_mini_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_5015a
PRODUCT_DEVICE := 5015a
PRODUCT_BRAND := TCL
PRODUCT_MODEL :=TCL 5015a
PRODUCT_MANUFACTURER := TCL

# Product characteristics
PRODUCT_AAPT_CONFIG := mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480
