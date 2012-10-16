# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)
$(call inherit-product, vendor/Eclipse/products/common_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := eclipse_toroplus
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.1.1/JRO03U/L700FH05:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03U L700FH05 release-keys" BUILD_NUMBER=L700FH05

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PACKAGES += \
    Torch

PRODUCT_COPY_FILES += \
    vendor/Eclipse/prebuilt/tuna/vold.fstab:system/etc/vold.fstab

KERNEL_MODULES_DIR:=/system/lib/modules

# Trinity Kernel - morfic
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/toroplus/boot.img:system/xbin/boot.img \

# Trinity kernel modules
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/modules/ansi_cprng.ko:system/modules/ansi_cprng.ko \
    vendor/Eclipse/proprietary/modules/cifs.ko:system/modules/cifs.ko \
    vendor/Eclipse/proprietary/modules/md4.ko:system/modules/md4.ko \
    vendor/Eclipse/proprietary/modules/scsi_wait_scan.ko:system/modules/scsi_wait_scan.ko

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/toroplus

