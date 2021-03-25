#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/msmnile.mk)

# Inherit some common Revenge stuff.
$(call inherit-product, vendor/pa/config/common.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := pa_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="cepheus" \
    PRODUCT_DEVICE="cepheus"

SYBERIA_BUILD_TYPE := OFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# FOD
TARGET_HAS_FOD := true

# FOD animations
TARGET_WANTS_FOD_ANIMATIONS := true

# Dev certificate
#PRODUCT_DEFAULT_DEV_CERTIFICATE:= build/target/product/security/devkey

