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

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AwakenOS stuff
$(call inherit-product, vendor/awaken/config/common.mk)

# Inherit from Realme r2p
$(call inherit-product, device/realme/r2p/device.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

PRODUCT_NAME := awaken_r2p
PRODUCT_DEVICE := r2p
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := oppo
PRODUCT_MODEL := Realme 2 Pro
PRODUCT_ARCH := arm64

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := r2p
TARGET_VENDOR_DEVICE_NAME := r2p

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r2p" \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210605.005 7349499 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"
