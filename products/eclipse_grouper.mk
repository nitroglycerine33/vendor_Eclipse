$(call inherit-product, device/asus/grouper/full_grouper.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := eclipse_grouper
PRODUCT_BOARD := grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 533553 release-keys" BUILD_NUMBER=533553

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.android.dataroaming=false \
    ro.setupwizard.mode=OPTIONAL \
    drm.service.enabled=true

# Lean Kernel
PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/grouper/boot.img:system/xbin/boot.img \

PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/grouper/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/Eclipse/prebuilt/grouper/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    vendor/asus/grouper/proprietary/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/asus/grouper/proprietary/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/asus/grouper/proprietary/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/asus/grouper/proprietary/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/asus/grouper/proprietary/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/asus/grouper/proprietary/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4S

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/grouper

