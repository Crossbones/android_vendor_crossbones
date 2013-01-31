#
# Setup device specific product configuration.
#
$(call inherit-product, device/asus/grouper/full_grouper.mk)
# Inherit common settings
$(call inherit-product, vendor/crossbones/config/common_full_tablet_wifionly.mk)

PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-tvdpi.zip:system/media/bootanimation.zip  \
    device/asus/grouper/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_DISPLAY_ID=JOP40D BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_NAME := crossbones_grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false

