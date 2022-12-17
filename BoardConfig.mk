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

# Inherit from Exynos7580-common
include device/samsung/exynos7580-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := a3xe3g,a3xe3gxx,a3xelte,a3xeltexx

DEVICE_PATH := device/samsung/a3xeltexx

# Include path
#TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SYSMAGIC000KU --dt $(DEVICE_PATH)/dt.img
TARGET_KERNEL_CONFIG := cyanogenmod_a3xelte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a3xelte

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 29360128
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35651584
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13514047488
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Hardware
BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

# HDMI
BOARD_HDMI_INCAPABLE := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Radio
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.samsungexynos7580

# Radio
SIM_COUNT := 2
BOARD_MODEM_TYPE := tss310
TARGET_GLOBAL_CFLAGS += -DANDROID_MULTI_SIM
TARGET_GLOBAL_CPPFLAGS += -DANDROID_MULTI_SIM

# inherit from the proprietary version
-include vendor/samsung/a3xe3gxx/BoardConfigVendor.mk
