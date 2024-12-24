#
# Copyright (C) 2023 The Evolution X Project
# SPDX-License-Identifier: Apache-2.0
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/google/shusky/face/overlay

# Runtime resource overlays
PRODUCT_PACKAGES += \
    FaceEnrollOverlay \
    FaceEnrollSettingsOverlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.biometrics.face.xml

# Sepolicy
BOARD_SEPOLICY_DIRS += device/google/shusky/face/sepolicy
