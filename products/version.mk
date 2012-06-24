# Common ROM version
ROM_VERSION_STABLE = 0
ROM_VERSION_BETA = 4
ROM_VERSION_ALPHA = 2

BUILD_VERSION = $(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

#Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IMM76L BUILD_DISPLAY_ID=IMM76L USER=android-build

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION)-$(PRODUCT_DEVICE)-$(BUILD_ID) \
    ro.romversion=$(BUILD_VERSION) \
    ro.rommanager.developerid=crossbones \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

