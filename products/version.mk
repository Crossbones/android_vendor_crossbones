# Common ROM version
ROM_VERSION_STABLE = 2
ROM_VERSION_BETA = 1
ROM_VERSION_ALPHA = 2

BUILD_VERSION = $(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

#Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=JOP40D BUILD_DISPLAY_ID=JOP40D  BUILD_NUMBER=533553 USER=android-build

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION)-$(PRODUCT_DEVICE)-$(BUILD_ID) \
    ro.romversion=$(BUILD_VERSION) \
    ro.rommanager.developerid=crossbones \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

# Message displayed while flashing ROM
PRODUCT_MOTD :="\n+-------------Crossbones ROM $(BUILD_VERSION)-------------+\n|--| http://xbones.org | support@xbones.org |--|\n|--| Follow: @Xbones_dev for news & updates |--|\n+----------------------------------------------+\n"


