$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_toroplus
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Sprint Galaxy Nexus CDMA
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/torospr:4.1.2/JZO54K/485486:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.1.2 JZO54K 485486 release-keys"

# Crossbones common version properties
-include vendor/crossbones/products/version.mk

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/toro

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip
