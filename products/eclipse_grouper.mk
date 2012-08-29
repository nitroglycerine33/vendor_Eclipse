$(call inherit-product, device/asus/grouper/full_grouper.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := eclipse_grouper
PRODUCT_BOARD := grouper
PRODUCT_DEVICE := grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.android.dataroaming=false \
    ro.setupwizard.mode=OPTIONAL \

PRODUCT_COPY_FILES += \
    vendor/asus/grouper/proprietary/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/asus/grouper/proprietary/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/asus/grouper/proprietary/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/asus/grouper/proprietary/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/asus/grouper/proprietary/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/asus/grouper/proprietary/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4

# Trinity Kernel - morfic
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/nexus7/boot.img:system/xbin/boot.img \

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/grouper

