$(call inherit-product, device/samsung/torospr/full_torospr.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_torospr
PRODUCT_BRAND := google
PRODUCT_DEVICE := torospr
PRODUCT_MODEL := Sprint Galaxy Nexus CDMA
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/torospr:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=299849

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your $(PRODUCT_MODEL)\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/toro

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/xhdpi/media/bootanimation.zip:system/media/bootanimation.zip
