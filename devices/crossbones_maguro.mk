#
# Setup device specific product configuration.
#
$(call inherit-product, device/samsung/maguro/full_maguro.mk)
# Inherit common settings
$(call inherit-product, vendor/crossbones/config/common_full_phone.mk)
# Inherit GSM common settings
$(call inherit-product, vendor/crossbones/config/gsm.mk)
# Inherit torch settings
$(call inherit-product, vendor/crossbones/config/common_ledflash.mk)

# Bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bootanimation/bootanimation-xhdpi.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_NAME := crossbones_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

