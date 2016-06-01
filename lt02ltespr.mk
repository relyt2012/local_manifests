# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Inherit AOSP device configuration for lt02ltespr.
$(call inherit-product, device/samsung/lt02ltespr/full_lt02ltespr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lt02ltespr \
    TARGET_DEVICE=lt02ltespr

# Setup device specific product configuration.
PRODUCT_NAME := aicp_lt02ltespr
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := lt02ltespr
PRODUCT_MODEL := SM-T217S
PRODUCT_MANUFACTURER := samsung

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="DarkFrenzy"

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600
-include vendor/aicp/configs/bootanimation.mk
