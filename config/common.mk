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

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/crossbones/prebuilt/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilt binaries & scripts
PRODUCT_COPY_FILES +=  \
    vendor/crossbones/prebuilt/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/crossbones/prebuilt/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/crossbones/prebuilt/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/crossbones/prebuilt/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/crossbones/prebuilt/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/crossbones/prebuilt/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/crossbones/prebuilt/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/crossbones/prebuilt/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/crossbones/prebuilt/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/crossbones/prebuilt/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/crossbones/prebuilt/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/crossbones/prebuilt/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/crossbones/prebuilt/bin/set_sysctl:system/bin/set_sysctl \
    vendor/crossbones/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/crossbones/prebuilt/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
    vendor/crossbones/prebuilt/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    vendor/crossbones/prebuilt/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    vendor/crossbones/prebuilt/etc/audio/situation.txt:system/etc/audio/situation.txt \
    vendor/crossbones/prebuilt/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    vendor/crossbones/prebuilt/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    vendor/crossbones/prebuilt/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    vendor/crossbones/prebuilt/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    vendor/crossbones/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/crossbones/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    vendor/crossbones/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/crossbones/prebuilt/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
    vendor/crossbones/prebuilt/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
    vendor/crossbones/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/crossbones/prebuilt/etc/eqfilter.txt:system/etc/eqfilter.txt \
    vendor/crossbones/prebuilt/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/crossbones/prebuilt/etc/HP_Video.csv:system/etc/HP_Video.csv \
    vendor/crossbones/prebuilt/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    vendor/crossbones/prebuilt/etc/soundbooster.txt:system/etc/soundbooster.txt \
    vendor/crossbones/prebuilt/lib/libbeatsbass.so:system/etc/lib/libbeatsbass.so \
    vendor/crossbones/prebuilt/lib/libbundlewrapper.so:system/etc/lib/libbundlewrapper.so \
    vendor/crossbones/prebuilt/lib/libreverbwrapper.so:system/etc/lib/libreverbwrapper.so \
    vendor/crossbones/prebuilt/lib/libsrsfx.so:system/etc/lib/libsrsfx.so \
    vendor/crossbones/prebuilt/lib/libvisualizer.so:system/etc/lib/libvisualizer.so \
    vendor/crossbones/prebuilt/lib/libxloudwrapper.so:system/etc/lib/libxloudwrapper.so \
    vendor/crossbones/prebuilt/xbin/su:system/xbin/su \
    vendor/crossbones/prebuilt/xbin/sysctl:system/xbin/sysctl

# T-Mobile theme engine
include vendor/crossbones/config/themes_common.mk

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
ROM_VERSION_MAINTENANCE = 3

BUILD_VERSION = $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR).$(ROM_VERSION_MAINTENANCE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=Crossbones-$(BUILD_VERSION) \
    ro.romversion=$(BUILD_VERSION) \
    ro.goo.developerid=crossbones \
    ro.goo.rom=Crossbones \
    ro.goo.version=$(shell date +%s)

# Message displayed while flashing ROM
PRODUCT_MOTD :="\n+-------------Crossbones ROM $(BUILD_VERSION)-------------+\n|--| http://xbones.org | support@xbones.org |--|\n|--| Follow: @Xbones_dev for news & updates |--|\n+----------------------------------------------+\n"



