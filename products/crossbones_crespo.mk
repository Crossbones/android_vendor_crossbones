$(call inherit-product, device/samsung/crespo/full_crespo.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/crossbones/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=sojus BUILD_FINGERPRINT=google/sojus/crespo:4.1.1/JRO03L/398337:user/release-keys PRIVATE_BUILD_DESC="sojus-user 4.1.1 JRO03L 398337 release-keys"

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your $(PRODUCT_MODEL)\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/crespo

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
