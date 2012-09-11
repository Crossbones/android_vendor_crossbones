$(call inherit-product, device/samsung/toro/full_toro.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Verizon Galaxy Nexus CDMA
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT=google/mysid/toro:4.1.1/JRO03L/398337:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03L 398337 release-keys"

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your $(PRODUCT_MODEL)\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/toro

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip
