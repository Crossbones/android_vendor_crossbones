$(call inherit-product, device/samsung/crespo/full_crespo.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/crossbones/products/gsm.mk)

# Crossbones common version
$(call inherit-product, vendor/crossbones/products/version.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo:4.0.3/IML74K/239410:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.0.3 IML74K 239410 release-keys" BUILD_NUMBER=239410

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evervolv/overlay/crespo

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your Nexus S\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

#
# Copy crespo specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
