DEVICE_PATH := device/tcl/5015a

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/tcl/5015a/pixi-vendor.mk)

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

# Init
PRODUCT_PACKAGES += \
    init.mt6560.rc \

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
   
    
    # GSM
PRODUCT_PACKAGES += libmt6580
    
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
