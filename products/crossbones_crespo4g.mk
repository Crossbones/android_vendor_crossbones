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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo4g:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your $(PRODUCT_MODEL)\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/crespo4g

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
