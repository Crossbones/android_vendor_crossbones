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

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilt binaries & scripts
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/crossbones/prebuilt/bin/set_sysctl:system/bin/set_sysctl \
    vendor/crossbones/prebuilt/xbin/su:system/xbin/su \
    vendor/crossbones/prebuilt/xbin/sysctl:system/xbin/sysctl

# Required packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME \
    SuperSU \
    busybox

# Optional packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
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

# Message displayed while flashing ROM
PRODUCT_MOTD :="\n+-------------Crossbones ROM $(BUILD_VERSION)-------------+\n|--| http://xbones.org | support@xbones.org |--|\n|--| Follow: @Xbones_dev for news & updates |--|\n+----------------------------------------------+\n"



