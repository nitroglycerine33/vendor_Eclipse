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

# Trinity Kernel - morfic
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/nexus7/boot.img:system/xbin/boot.img \

