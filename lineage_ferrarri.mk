#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrarri device
$(call inherit-product, device/realme/ferrarri/device.mk)

# Inherit some common Everest stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# ViPER4Android FX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# BCR
$(call inherit-product, vendor/bcr/bcr.mk)

# Everest
EVEREST_MAINTAINER := RAM-UNLOK
EVEREST_BUILD_TYPE := OFFICIAL
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true

TARGET_USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false

WITH_GMS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_BOOT_ANIMATION_RES := 1080

BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := false
BUILD_GOOGLE_MESSAGE := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := everest_ferrarri
PRODUCT_DEVICE := ferrarri
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3301

PRODUCT_SYSTEM_NAME := RED8ACL1
PRODUCT_SYSTEM_DEVICE := RED8ACL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
