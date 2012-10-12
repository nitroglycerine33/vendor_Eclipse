$(call inherit-product, device/samsung/maguro/full_maguro.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

PRODUCT_NAME := eclipse_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.1.2/JZO54K/485486:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.2 JZO54K 485486 release-keys" BUILD_NUMBER=485486

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PACKAGES += \
    Torch \
    Stk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.android.dataroaming=false \
    ro.setupwizard.mode=OPTIONAL \
    drm.service.enabled=true

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/maguro

