# Common ROM version
ROM_VERSION_STABLE = 0
ROM_VERSION_BETA = 2
ROM_VERSION_ALPHA = 4

BUILD_VERSION = $(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

#Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K USER=android-build

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION)-$(PRODUCT_DEVICE)-$(BUILD_ID) \
    ro.romversion=$(BUILD_VERSION) \
    ro.rommanager.developerid=crossbones \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

