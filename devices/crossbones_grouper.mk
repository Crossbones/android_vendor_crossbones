#
# Setup device specific product configuration.
#
$(call inherit-product, device/asus/grouper/full_grouper.mk)
# Inherit common settings
$(call inherit-product, vendor/crossbones/config/common_full_tablet_wifionly.mk)

PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-tvdpi.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_DISPLAY_ID=JDQ39 BUILD_FINGERPRINT="google/nakasi/grouper:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_NAME := crossbones_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_RESTRICT_VENDOR_FILES := false

