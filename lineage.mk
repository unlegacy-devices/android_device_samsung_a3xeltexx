#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from a3xeltexx device
$(call inherit-product, device/samsung/a3xeltexx/device.mk)

# Inherit common CM phone.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit nfc enhanced configuration
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := lineage_a3xeltexx
PRODUCT_DEVICE := a3xeltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
