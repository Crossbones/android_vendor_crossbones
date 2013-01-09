# Common ROM version
ROM_VERSION_MAJOR = 2
ROM_VERSION_MINOR = 2
ROM_VERSION_MAINTENANCE = 0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40D

BUILD_VERSION = $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR).$(ROM_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION)-$(PRODUCT_DEVICE)-$(BUILD_ID) \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

