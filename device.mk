
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/tcl/5015a/5015a-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.soundtrigger@2.2-impl \
    android.hardware.bluetooth.audio@2.0-impl \
    audio.a2dp.default \
    audio.bluetooth.default \
    
# Camera
PRODUCT_PACKAGES += \
    Snap
    
 # Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service
    
    # Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6580:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6739

# Init
PRODUCT_PACKAGES += \
    init.mt6580.rc \
    fstab.enableswap
 
 #Bootjar
PRODUCT_PACKAGES += api.pure
PRODUCT_BOOT_JARS += api.pure
PRODUCT_PACKAGES += core-obj
PRODUCT_BOOT_JARS += core-obj
PRODUCT_PACKAGES += core-libpart
PRODUCT_BOOT_JARS += core-libpart
PRODUCT_PACKAGES += okhttp
PRODUCT_BOOT_JARS += okhttp
PRODUCT_PACKAGES += bouncycastle
PRODUCT_BOOT_JARS += bouncycastle
PRODUCT_PACKAGES += apache-xml
PRODUCT_BOOT_JARS += apache-xml

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_video.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml


# WiFi
PRODUCT_PACKAGES += \
    libkeystore-wifi-hidl \
    libkeystore-engine-wifi-hidl
    
# Bluetooth
PRODUCT_PACKAGES += \
    libldacBT_dec \
    libbtconfigstore
    
# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    mtk-telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext
    
# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service
    
 # Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service
