# Inherit AOSP device configuration for d2vzw.
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/Eclipse/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/Eclipse/products/common.mk)

#PRODUCT_PACKAGE_OVERLAYS += vendor/Eclipse/overlay/d2vzw

# Lean Kernel - Imoseyon
PRODUCT_COPY_FILES +=  \
vendor/Eclipse/prebuilt/common/kernel/d2vzw/boot.img:system/xbin/boot.img \

# Lean kernel modules/bins - Imoseyon
PRODUCT_COPY_FILES +=  \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/thermald:system/bin/thermald \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/ffc:system/xbin/ffc \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/stocktherm:system/xbin/stocktherm \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/btlock.ko:system/lib/modules/btlock.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/dhd.ko:system/lib/modules/dhd.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/evbug.ko:system/lib/modules/evbug.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/gspca_main.ko:system/lib/modules/gspca_main.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/qce40.ko:system/lib/modules/qce40.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/qcedev.ko:system/lib/modules/qcedev.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/qcrypto.ko:system/lib/modules/qcrypto.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/spidev.ko:system/lib/modules/spidev.ko \
    vendor/Eclipse/prebuilt/common/kernel/d2vzw/vpnclient.ko:system/lib/modules/vpnclient.ko

# Setup device specific product configuration.
PRODUCT_NAME := eclipse_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2vzw
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.0.4/IMM76D/I535VRALG7:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.0.4 IMM76D I535VRALG7 release-keys"

