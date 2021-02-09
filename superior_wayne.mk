#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit Superior product configuration
$(call inherit-product, vendor/superior/config/common.mk)

# Add MiuiCam
$(call inherit-product, vendor/xiaomi/MiuiCamera/Android.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="wayne-user 9 PKQ1.180904.001 V10.3.4.0.PDCCNXM release-keys"
TARGET_BOOT_ANIMATION_RES := 1080

# Density
TARGET_SCREEN_DENSITY := 400

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := superior_wayne
PRODUCT_DEVICE := wayne
PRODUCT_MODEL := MI 6X

# Maintainer prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.superior.maintainer=MadDogRRS2
SUPERIOR_OFFICIAL := true
