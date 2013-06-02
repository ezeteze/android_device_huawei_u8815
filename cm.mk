# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8815/u8815.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_u8815
PRODUCT_DEVICE := u8815
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI U8815
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RELEASE_NAME := U8815

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8815 \
	BUILD_FINGERPRINT=huawei/u8815:4.1.2/JZO54K/223136:userdebug/release \
	PRIVATE_BUILD_DESC="huawei-user 4.1.2 JZO54K 223136 release" \
	BUILD_NUMBER=223136 \
	BUILD_USER=huawei \
	BUILD_HOST=huawei-desktop
