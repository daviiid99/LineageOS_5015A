DEVICE_PATH := device/tcl/5015A

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/tcl/5015a/pixi-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

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
    
    # Lights
PRODUCT_PACKAGES += \
    lights.mt6580
    
 # Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6739:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6739

# Init
PRODUCT_PACKAGES += \
    init.mt6560.rc \
    init.wifi.mt6580.sh \
    fstab.enableswap

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_video.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml

# Wifi
PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx \
    libwifi-hal-mt66xx \
    wifi_hal 
    
    # FMRadio
PRODUCT_PACKAGES += \
    FMRadio \
    libfmcust \
    libfmjni \
    libfmmt6620 \
    libfmmt6627 \
    libfmmt6628 \
    libfmmt6630 \
    libmtkplayer
    
    # GSM
PRODUCT_PACKAGES += libmt6580
    
    # GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml \

PRODUCT_PACKAGES += \
    gps.mt6580 \
    YGPS
    
    # Bluetooth
PRODUCT_PACKAGES += \
    libldacBT_dec \
    libbtconfigstore
    
# Trust HAL
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service
    
# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
    
 # Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service
