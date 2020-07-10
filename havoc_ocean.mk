#
# Copyright (C) 2019 The LineageOS Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit from ocean device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := ocean
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := havoc_ocean
PRODUCT_MODEL := moto g(7) power

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=ocean \
        PRIVATE_BUILD_DESC="ocean-user 9 PPO29.114-134-10 21fefe release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/coral/coral:10/QQ2A.200405.005/6254899:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint="google/coral/coral:10/QQ2A.200405.005/6254899:user/release-keys"
