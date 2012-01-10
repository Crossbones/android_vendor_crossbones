# Common ROM version
ROM_VERSION_STABLE = 0
ROM_VERSION_BETA = 2
ROM_VERSION_ALPHA = 0

BUILD_VERSION = $(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

#Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K USER=android-build ROM_VERSION=Crossbones-$(BUILD_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Crossbones-$(BUILD_VERSION)
