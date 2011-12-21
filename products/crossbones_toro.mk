$(call inherit-product, device/samsung/toro/full_toro.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

# Crossbones common version
$(call inherit-product, vendor/crossbones/products/version.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus CDMA
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/toro

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones for your Galaxy Nexus\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
