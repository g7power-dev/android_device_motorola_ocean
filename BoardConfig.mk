#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from motorola sdm632-common
-include device/motorola/sdm632-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/ocean

# Assertions
TARGET_OTA_ASSERT_DEVICE := ocean

# Kernel
TARGET_KERNEL_CONFIG := ocean_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2885681152
BOARD_VENDORIMAGE_PARTITION_SIZE := 603979776

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/motorola/ocean/BoardConfigVendor.mk
