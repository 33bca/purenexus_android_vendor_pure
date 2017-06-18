# Copyright (C) 2017 The Pure Nexus Project
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

IS_ARM64 := true

# Include pure telephony configuration
include vendor/pure/configs/pure_phone.mk

# Inherit AOSP device configuration for Gemini
$(call inherit-product, device/xiaomi/gemini/gemini.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := gemini
PRODUCT_NAME := gemini
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 5
TARGET_VENDOR := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.manifest=https://raw.githubusercontent.com/33bca/PUREOTA-API/nougat/gemini.json

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/gemini/gemini:7.0/NRD90M/V8.2.1.0.NAACNEB:user/release-keys" \
    PRIVATE_BUILD_DESC="gemini-user 7.0 NRD90M V8.2.1.0.NAACNEB release-keys"
