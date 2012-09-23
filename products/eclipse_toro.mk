$(call inherit-product, device/samsung/toro/full_toro.mk)
$(call inherit-product, vendor/Eclipse/products/common.mk)

PRODUCT_NAME := eclipse_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_ID=JRO03O BUILD_DISPLAY_ID=JRO03O BUILD_FINGERPRINT="google/mysid/toro:4.1.1/JRO03O/424425:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.1.1 JRO03O 424425 release-keys" BUILD_NUMBER=424425

KERNEL_MODULES_DIR:=/system/lib/modules

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.android.dataroaming=false \
    ro.setupwizard.mode=OPTIONAL \
    ro.cdma.home.operator.numeric=310004 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
    ro.gsm.2nd_data_retry_config=max_retries=infinite,default_randomization=2000,0,0,80000,125000,485000,905000 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    drm.service.enabled=true

PRODUCT_COPY_FILES += \
    vendor/samsung/toro/proprietary/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/samsung/toro/proprietary/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/samsung/toro/proprietary/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml

# Trinity Kernel - morfic
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/toro/boot.img:system/xbin/boot.img \

# Trinity kernel modules
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/proprietary/modules/ansi_cprng.ko:system/modules/ansi_cprng.ko \
    vendor/Eclipse/proprietary/modules/cifs.ko:system/modules/cifs.ko \
    vendor/Eclipse/proprietary/modules/md4.ko:system/modules/md4.ko \
    vendor/Eclipse/proprietary/modules/scsi_wait_scan.ko:system/modules/scsi_wait_scan.ko

PRODUCT_PACKAGE_OVERLAYS += vendor/samsung/overlay
