# Inherit common mobile LMODroid stuff
$(call inherit-product, vendor/lmodroid/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

# AOSP packages
PRODUCT_PACKAGES += \
    Email \
    ExactCalculator \
    Exchange2

# Accents
PRODUCT_PACKAGES += \
    LMODroidBlackTheme \
    LMODroidBlackAccent \
    LMODroidBlueAccent \
    LMODroidBrownAccent \
    LMODroidCyanAccent \
    LMODroidGreenAccent \
    LMODroidOrangeAccent \
    LMODroidPinkAccent \
    LMODroidPurpleAccent \
    LMODroidRedAccent \
    LMODroidYellowAccent

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarNoHintOverlay \
    IconShapePebbleOverlay \
    IconShapeRoundedRectOverlay \
    IconShapeSquareOverlay \
    IconShapeSquircleOverlay \
    IconShapeTaperedRectOverlay \
    IconShapeTeardropOverlay \
    IconShapeVesselOverlay \
    NavigationBarMode2ButtonOverlay

# DesktopMode
PRODUCT_PACKAGES += \
    DesktopMode

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.software.freeform_window_management.xml

$(call inherit-product, packages/services/VncFlinger/product.mk)

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
