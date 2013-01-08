#
# Setup device specific product configuration.
#
$(call inherit-product, device/asus/grouper/full_grouper.mk)
# Inherit common settings
$(call inherit-product, vendor/crossbones/config/common_full_tablet_wifionly.mk)

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-grouper.zip:system/media/bootanimation.zip

PRODUCT_COPY_FILES += \
    vendor/crossbones/prebuilt/app/CameraLauncher.apk:data/app/CameraLauncher.apk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_NAME := crossbones_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false

