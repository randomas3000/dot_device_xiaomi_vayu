#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common DotOS configurations
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

PRODUCT_NAME := cherish_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SI



#some flags
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true 
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true 


#maintainer
# CherishOS
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer=randomas3000
