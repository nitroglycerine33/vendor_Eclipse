# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/Eclipse/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/Eclipse/products/common.mk)
$(call inherit-product, vendor/Eclipse/products/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/d2common

# Prebuilt Kernel
#PRODUCT_COPY_FILES +=  \
#vendor/Eclipse/prebuilt/common/kernel/d2vzw/boot.img:system/xbin/boot.img \

PRODUCT_PACKAGES += \
    Torch

# Setup device specific product configuration.
PRODUCT_NAME := eclipse_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.0.4/IMM76D/I535VRALG7:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.0.4 IMM76D I535VRALG7 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.config.qc_lte_network_modes=true \
    drm.service.enabled=true

