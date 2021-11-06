#
# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := device/samsung/a3xelte

# Inherit from those products. Most specific first.
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit common Lineage phone.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := havoc_a3xelte
PRODUCT_DEVICE := a3xelte
PRODUCT_MODEL := SM-A310F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_INCLUDE_LIVE_WALLPAPERS := false

TARGET_GAPPS_ARCH := arm

TARGET_SUPPORTS_BLUR := false

TARGET_FACE_UNLOCK_SUPPORTED := false

TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 720