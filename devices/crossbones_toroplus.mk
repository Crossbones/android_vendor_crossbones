#
# Setup device specific product configuration.
#
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
# Inherit common settings
$(call inherit-product, vendor/crossbones/config/common_full_phone.mk)
# Inherit CDMA common settings
$(call inherit-product, vendor/crossbones/config/cdma.mk)
# Inherit torch settings
$(call inherit-product, vendor/crossbones/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip \
    device/samsung/toroplus/vold.fstab:system/etc/vold.fstab

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_DISPLAY_ID=JDQ39 BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.2.1/JDQ39/L700GA02:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.2.1 JDQ39 L700GA02 release-keys"

PRODUCT_NAME := crossbones_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

