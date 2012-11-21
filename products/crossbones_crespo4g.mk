$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.1.2/JZO54K/485486:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.1.2 JZO54K 485486 release-keys"

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your Nexus S 4G\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/crespo4g

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-hdpi.zip:system/media/bootanimation.zip
