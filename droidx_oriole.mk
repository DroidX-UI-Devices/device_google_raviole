#
# Copyright (C) 2021 The DroidX-UI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common DroidX stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/gs101/droidx_common.mk)

include device/google/raviole/oriole/device-droidx.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := droidx_oriole

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ3A.230805.001 10316531 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:13/TQ3A.230805.001/10316531:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
