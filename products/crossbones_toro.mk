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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.2.1 JOP40D 533553 release-keys"

# Crossbones common version properties
-include vendor/crossbones/products/version.mk

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/toro

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip
