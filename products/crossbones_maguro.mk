$(call inherit-product, device/samsung/maguro/full_maguro.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus GSM
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.1.2/JZO54K/485486:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.1.2 JZO54K 485486 release-keys"

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your GSM Galaxy Nexus\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/maguro

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip
