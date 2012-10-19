PRODUCT_NAME := Eclipse
PRODUCT_BRAND := Eclipse
PRODUCT_DEVICE := generic

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/common

PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Stk \
    EclipseWallpapers \
    FileManager \
    Wallpapers

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    vendor/Eclipse/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip

# CM T-Mobile Theme Engine
include vendor/Eclipse/products/themes_common.mk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Eclipse/prebuilt/common/bin/sysinit:system/bin/sysinit

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Eclipse/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Google DNS servers and host file
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Eclipse/prebuilt/common/etc/hosts:system/etc/hosts

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/bash:system/xbin/bash \
    vendor/Eclipse/prebuilt/common/nano:system/xbin/nano \
    vendor/Eclipse/prebuilt/common/sysro:system/xbin/sysro \
    vendor/Eclipse/prebuilt/common/sysrw:system/xbin/sysrw

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/Eclipse/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/Eclipse/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/Eclipse/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/Eclipse/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh

# Appwidgetpicker
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/AppWidgetPicker.apk:system/app/AppWidgetPicker.apk \

# Launcher
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/NovaLauncher.apk:system/app/NovaLauncher.apk \

# Email
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Email.apk:system/app/Email.apk \

# Term binary for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Term.apk:system/app/Term.apk \
    vendor/Eclipse/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so 

# SU binary and APK
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/su:system/xbin/su \
    vendor/Eclipse/prebuilt/common/Superuser.apk:system/app/Superuser.apk

# BusyBox binary
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/busybox:system/xbin/busybox
	
# SSH binary
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/ssh:system/xbin/ssh

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.dataroaming=false \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.modversion=Eclipse-2.1 \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240
