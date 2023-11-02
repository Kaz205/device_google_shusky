# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_husky
PRODUCT_DEVICE := husky
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UD1A.230803.041 10808477 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGEPRINT)
