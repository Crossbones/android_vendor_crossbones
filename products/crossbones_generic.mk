# Inherit AOSP device configuration for generic target
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, vendor/crossbones/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := crossbones_generic
PRODUCT_BRAND := crossbones
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Generic Device
PRODUCT_MANUFACTURER := Crossbones

# Crossbones common version
-include vendor/crossbones/products/version.mk

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your Generic Device\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1
