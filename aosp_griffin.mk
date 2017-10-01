#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# for specific
$(call inherit-product, vendor/motorola/griffin/griffin-vendor.mk)
$(call inherit-product, device/motorola/griffin/device.mk)

# Inherit some common AospExtended stuff.
$(call inherit-product, vendor/aosp/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

DEVICE_PACKAGE_OVERLAYS += device/motorola/griffin/overlay

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_NAME := aosp_griffin
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := griffin
PRODUCT_MODEL := XT1650
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_VENDOR_PRODUCT_NAME := griffin_retail
TARGET_VENDOR_DEVICE_NAME := griffin

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/griffin/griffin:7.1.1/NPL26.118-20/19:user/release-keys \
    PRIVATE_BUILD_DESC="griffin-user 7.1.1 NPL26.118-20 19 release-keys" \
    PRODUCT_NAME="Moto Z"

TARGET_VENDOR := motorola
