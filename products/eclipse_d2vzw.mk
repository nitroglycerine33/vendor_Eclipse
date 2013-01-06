# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/Eclipse/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/Eclipse/products/common.mk)

#PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/d2common

# Setup device specific product configuration.
PRODUCT_NAME := eclipse_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="d2vzw-user 4.1.1 JRO03L I535VRBLK3 release-keys" PRIVATE_BUILD_DESC="Verizon/d2vzw/d2vzw:4.1.1/JRO03L/I535VRBLK3:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.config.qc_lte_network_modes=true \
    drm.service.enabled=true

