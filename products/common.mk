PRODUCT_NAME := Eclipse
PRODUCT_BRAND := Eclipse
PRODUCT_DEVICE := generic

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/common

PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    Stk \
    Wallpapers

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    vendor/Eclipse/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip


# Term binary for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Term.apk:system/app/Term.apk \
    vendor/Eclipse/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so 

# SU binary and APK
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/su:system/bin/su \
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
    ro.modversion=Eclipse-v.411-3 \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=240
