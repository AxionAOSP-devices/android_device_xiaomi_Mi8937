#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Flags
AXION_MAINTAINER := Rve
AXION_PROCESSOR := Snapdragon_430

# Camera
PRODUCT_NO_CAMERA := false
AXION_CAMERA_REAR_INFO := 13
AXION_CAMERA_FRONT_INFO := 5

# CPU
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CPU_BG := 0-1
AXION_CPU_FG := 0-7

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from Mi8937 device
$(call inherit-product, device/xiaomi/Mi8937/device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_PACKAGES += \
    xiaomi_prada_overlay_lineage \
    xiaomi_riva_overlay_lineage \
    xiaomi_rolex_overlay_lineage \
    xiaomi_ulysse_overlay_lineage \
    xiaomi_wt8937_overlay_lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi8937_4_19
PRODUCT_NAME := lineage_Mi8937_4_19
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"
    BuildFingerprint=Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys
