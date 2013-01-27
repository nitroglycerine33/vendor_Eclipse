 
$(call inherit-product, device/samsung/maguro/full_maguro.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

PRODUCT_NAME := eclipse_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PACKAGES += \
    Stk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=OPTIONAL \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true

#PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/maguro

PRODUCT_COPY_FILES += \
    vendor/Eclipse/common/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Eclipse/common/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/Eclipse/common/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/Eclipse/common/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/Eclipse/common/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/Eclipse/common/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/Eclipse/common/video/Sunset240p.mp4:system/media/video/Sunset240p.mp4 \
    vendor/Eclipse/common/video/Sunset480p.mp4:system/media/video/Sunset480p.mp4
