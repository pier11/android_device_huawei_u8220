# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/huawei/u8220/device_u8220.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Include GSM-only stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_u8220
PRODUCT_BRAND := huawei
PRODUCT_DEVICE := u8220
PRODUCT_MODEL := U8220/U8230
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u8220 BUILD_ID=ITL41D BUILD_FINGERPRINT=google/yakju/maguro:4.0.1/ITL41D/223971:user/release-keys PRIVATE_BUILD_DESC="maguro-user 4.0.1 ITL41D 223971 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := U8220
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk

#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
