#
# Copyright (C) 2015-2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/motorola/griffin

TARGET_RECOVERY_DEVICE_DIRS := $(DEVICE_PATH)

# Arch
BOARD_VENDOR := motorola-qcom
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := kryo
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cnsscore.pcie_link_down_panic=1 androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := griffin_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/motorola/msm8996

BOARD_USES_QCOM_HARDWARE := true

BOARD_KERNEL_TAGS_OFFSET := 0x00000100
TARGET_KERNEL_ARCH := arm64


# Partitions
BOARD_CACHEIMAGE_FILE_SIZE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    16384 * 1024 mmcblk0p37
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432    #    16484 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5704253440    #  4194304 * 1024 mmcblk0p53
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 268435456   # 25014255 * 1024 mmcblk0p54


# don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true

#CM Recovery
#TARGET_HAS_NO_SELECT_BUTTON := true

#Moto
#TARGET_USES_MOTOROLA_LOG := true

# TWRP
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/motorola/griffin/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_NEW_ION_HEAP := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
