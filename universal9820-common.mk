#
# Copyright (C) 2021 The LineageOS Project
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

COMMON_PATH := device/samsung/universal9820-common

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/universal9820-common/universal9820-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(COMMON_PATH)/overlay

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080

# Graphics
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi