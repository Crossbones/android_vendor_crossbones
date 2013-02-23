PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Playa.ogg \
    ro.config.notification_sound=Tejat.ogg \
    ro.config.alarm_alert=Plutonium.ogg

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilt binaries & scripts
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bin/set_sysctl:system/bin/set_sysctl \
    vendor/crossbones/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/crossbones/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/crossbones/prebuilt/xbin/su:system/xbin/su \
    vendor/crossbones/prebuilt/xbin/sysctl:system/xbin/sysctl

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    Superuser \
    busybox

# Optional packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    Welcome \
    GooManager \
    FileManager

#Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/common

# Common ROM version
ROM_VERSION_MAJOR = 2
ROM_VERSION_MINOR = 3
ROM_VERSION_MAINTENANCE = 0

BUILD_VERSION = $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR).$(ROM_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION) \
    ro.romversion=$(BUILD_VERSION) \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

# Message displayed while flashing ROM
PRODUCT_MOTD :="\n+-------------Crossbones ROM $(BUILD_VERSION)-------------+\n|--| http://xbones.org | support@xbones.org |--|\n|--| Follow: @Xbones_dev for news & updates |--|\n+----------------------------------------------+\n"



