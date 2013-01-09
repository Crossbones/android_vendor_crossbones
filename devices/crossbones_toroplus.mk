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

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/torospr:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_NAME := crossbones_toroplus
PRODUCT_DEVICE := toroplus
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit Crossbones version
$(call inherit-product, vendor/crossbones/config/version.mk)

