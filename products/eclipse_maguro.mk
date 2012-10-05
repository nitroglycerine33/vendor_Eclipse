$(call inherit-product, device/samsung/maguro/full_maguro.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

PRODUCT_NAME := eclipse_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=takju BUILD_ID=JRO03C BUILD_DISPLAY_ID=JRO03C BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=398337

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

# Trinity Kernel - morfic
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/maguro/boot.img:system/xbin/boot.img \

# Trinity kernel modules
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/modules/ansi_cprng.ko:system/modules/ansi_cprng.ko \
    vendor/Eclipse/proprietary/modules/cifs.ko:system/modules/cifs.ko \
    vendor/Eclipse/proprietary/modules/md4.ko:system/modules/md4.ko \
    vendor/Eclipse/proprietary/modules/scsi_wait_scan.ko:system/modules/scsi_wait_scan.ko

PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/maguro

