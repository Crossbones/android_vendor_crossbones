# Generic Crossbones product
PRODUCT_NAME := crossbones
PRODUCT_BRAND := crossbones
PRODUCT_DEVICE := generic

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Crossbones specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    FileManager 

# Extra tools in Crossbones
PRODUCT_PACKAGES += \
    openvpn

# Common Crossbones overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/crossbones/overlay/common

PRODUCT_COPY_FILES += \
    vendor/crossbones/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/crossbones/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/crossbones/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/crossbones/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/crossbones/prebuilt/common/etc/profile:system/etc/profile \
    vendor/crossbones/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/crossbones/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/crossbones/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/crossbones/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/crossbones/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/crossbones/prebuilt/common/etc/init.d/05mountext:system/etc/init.d/05mountext \
    vendor/crossbones/prebuilt/common/etc/init.d/06mountdl:system/etc/init.d/06mountdl \
    vendor/crossbones/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/crossbones/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/crossbones/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/crossbones/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/crossbones/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/crossbones/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/crossbones/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/crossbones/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/crossbones/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/crossbones/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

#Temporarily use this prebuilt Superuser.apk
PRODUCT_COPY_FILES += \
    vendor/crossbones/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/crossbones/prebuilt/common/bin/su:system/bin/su

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

