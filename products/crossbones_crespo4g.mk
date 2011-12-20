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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GRJ90 BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/crespo4g


BUILD_VERSION := 0.0.1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Crossbones-$(PRODUCT_DEVICE)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones for your Nexus S 4G\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
