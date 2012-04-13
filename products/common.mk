PRODUCT_NAME := Eclipse
PODUCT_BRAND := Eclipse
PRODUCT_DEVICE := generic
# standard packages 
PRODUCT_PACKAGES := \
    Camera \
    Gallery \
    SoundRecorder \
    FileManager \
    Superuser \
    Superuser.apk \
    su

# Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    HoloSpiralWallpaper \
    NoiseField \
    MagicSmokeWallpapers \
    EclipseWallpapers \
    Galaxy4 

#CM apps
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Eclipse/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/Eclipse/prebuilt/common/bin/sysinit:system/bin/sysinit

# Google DNS servers and host file
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Eclipse/prebuilt/common/etc/hosts:system/etc/hosts


# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/Eclipse/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/Eclipse/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Apex Launcher
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/ApexLauncher.apk:system/app/ApexLauncher.apk \

# Appwidgetpicker
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/AppWidgetPicker.apk:system/app/AppWidgetPicker.apk \

# Sense 4 Clock
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Sense4Clock.apk:system/app/Sense4Clock.apk \

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Term.apk:system/app/Term.apk \
    vendor/Eclipse/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so

# Swype Beta
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/Swype.apk:system/app/Swype.apk \
    vendor/Eclipse/proprietary/lib/armeabi/libnmsp_speex.so:system/lib/libnmsp_speex.so \
    vendor/Eclipse/proprietary/lib/armeabi/libSwypeCore.3.26.92.38303.so:system/lib/libSwypeCore.3.26.92.38303.so

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Eclipse/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Eclipse/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/Eclipse/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/Eclipse/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/Eclipse/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/Eclipse/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/Eclipse/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/Eclipse/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/common/xbin/backup:system/xbin/backup \
    vendor/Eclipse/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/Eclipse/prebuilt/common/xbin/btool:system/xbin/btool \
    vendor/Eclipse/prebuilt/common/xbin/busybox:system/xbin/busybox \
    vendor/Eclipse/prebuilt/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/Eclipse/prebuilt/common/xbin/gdb:system/xbin/gdb \
    vendor/Eclipse/prebuilt/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/Eclipse/prebuilt/common/xbin/market_history:system/xbin/market_history \
    vendor/Eclipse/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/Eclipse/prebuilt/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/Eclipse/prebuilt/common/xbin/run_backup:system/xbin/run_backup \
    vendor/Eclipse/prebuilt/common/xbin/run_restore:system/xbin/run_restore \
    vendor/Eclipse/prebuilt/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/Eclipse/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/Eclipse/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Eclipse/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/Eclipse/prebuilt/common/xbin/zipalign:system/xbin/zipalign \


# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.setupwizard.enterprise_mode=1 \
    ro.modversion=Eclipse \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=260 \
    wifi.supplicant_scan_interval=180
