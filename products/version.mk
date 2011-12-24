# Common ROM version
ROM_VERSION_STABLE = 0
ROM_VERSION_BETA = 0
ROM_VERSION_ALPHA = 3

#Common build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K

PRODUCT_MOTD :="\n\n\n-----------------CROSSBONES---------------------\nCrossbones $(BUILD_VERSION) for your $(PRODUCT_MODEL)\nFollow @Xbones_dev for the latest updates\n------------------------------------------------\n"

BUILD_VERSION = $(ROM_VERSION_STABLE).$(ROM_VERSION_BETA).$(ROM_VERSION_ALPHA)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=Crossbones-$(PRODUCT_DEVICE)-$(BUILD_VERSION)
