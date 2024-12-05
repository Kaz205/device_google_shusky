# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit some common hos stuff.
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_shiba.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := hentai_shiba
PRODUCT_MODEL := Pixel 8
PRODUCT_BRAND := google

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
