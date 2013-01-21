$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/Eclipse/configs/cdma.mk)

# Setup device specific product configuration.
PRODUCT_NAME := eclipse_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT="samsung/mysidspr/toroplus:4.1.1/JRO03U/L700FH05:user/release-keys" PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03U L700FH05 release-keys"

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
    

PRODUCT_COPY_FILES += \
    vendor/Eclipse/common/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Eclipse/common/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/Eclipse/common/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/Eclipse/common/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/Eclipse/common/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/Eclipse/common/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/Eclipse/common/video/Sunset240p.mp4:system/media/video/Sunset240p.mp4 \
    vendor/Eclipse/common/video/Sunset480p.mp4:system/media/video/Sunset480p.mp4
    