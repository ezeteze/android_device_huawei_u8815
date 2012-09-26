$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u8818/u8818-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8818/overlay
PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Video decoding
PRODUCT_PACKAGES += \
    libOmxCore \
    libmm-omxcore \
    libstagefrighthw \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7627a \
    copybit.msm7627a \
    hwcomposer.msm7627a \
    libtilerenderer \
    libQcomUI \
	liboverlay \
    libgenlock \
    libmemalloc \
	libI420colorconvert
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7627a \
    audio_policy.msm7627a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.u8818


# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

PRODUCT_PROPERTY_OVERRIDES += \
       dalvik.vm.heapstartsize=5m \
       dalvik.vm.heapgrowthlimit=36m \
       dalvik.vm.heapsize=128m

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8818/prebuilt/init.qcom.sh:root/init.qcom.sh \
    device/huawei/u8818/prebuilt/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8818/prebuilt/init.msm7627a.rc:root/init.msm7627a.rc \
    device/huawei/u8818/prebuilt/init.rc:root/init.rc \
    device/huawei/u8818/prebuilt/init.target.rc:root/init.target.rc \
    device/huawei/u8818/prebuilt/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/wifi/dhd_4330.ko:system/wifi/dhd_4330.ko \
    device/huawei/u8818/prebuilt/system/wifi/firmware.bin:system/wifi/firmware.bin \
    device/huawei/u8818/prebuilt/system/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/huawei/u8818/prebuilt/system/wifi/firmware_test.bin:system/wifi/firmware_test.bin \
    device/huawei/u8818/prebuilt/system/wifi/fw_4330_b2_test.bin:system/wifi/fw_4330_b2_test.bin \
    device/huawei/u8818/prebuilt/system/wifi/fw_4330_b2.bin:system/wifi/fw_4330_b2.bin \
    device/huawei/u8818/prebuilt/system/wifi/nvram_4330.txt:system/wifi/nvram_4330.txt \
    device/huawei/u8818/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf
    
PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/BCM4330.hcd:system/etc/bluetooth/BCM4330.hcd \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    device/huawei/u8818/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8818/prebuilt/system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    device/huawei/u8818/prebuilt/system/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured \
    device/huawei/u8818/prebuilt/system/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    device/huawei/u8818/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8818/prebuilt/system/etc/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8818/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    device/huawei/u8818/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8818/mediaprofiles/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8818/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8818/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8818/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/huawei/u8818/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8818/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl
    
PRODUCT_COPY_FILES += \
    device/huawei/u8818/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/huawei/u8818/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/huawei/u8818/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/huawei/u8818/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/huawei/u8818/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/huawei/u8818/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/huawei/u8818/prebuilt/system/lib/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/gspca_main.ko:system/lib/modules/gspca_main.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/lcd.ko:system/lib/modules/lcd.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/max2165.ko:system/lib/modules/max2165.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mc44s803.ko:system/lib/modules/mc44s803.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mt2060.ko:system/lib/modules/mt2060.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mt20xx.ko:system/lib/modules/mt20xx.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mt2131.ko:system/lib/modules/mt2131.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mt2266.ko:system/lib/modules/mt2266.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_erasepart.ko:system/lib/modules/mtd_erasepart.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_nandecctest.ko:system/lib/modules/mtd_nandecctest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mxl5005s.ko:system/lib/modules/mxl5005s.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/mxl5007t.ko:system/lib/modules/mxl5007t.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/qt1010.ko:system/lib/modules/qt1010.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda18212.ko:system/lib/modules/tda18212.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda18218.ko:system/lib/modules/tda18218.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda18271.ko:system/lib/modules/tda18271.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda827x.ko:system/lib/modules/tda827x.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda8290.ko:system/lib/modules/tda8290.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tda9887.ko:system/lib/modules/tda9887.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tea5761.ko:system/lib/modules/tea5761.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tea5767.ko:system/lib/modules/tea5767.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tuner-simple.ko:system/lib/modules/tuner-simple.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tuner-types.ko:system/lib/modules/tuner-types.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/tuner-xc2028.ko:system/lib/modules/tuner-xc2028.ko \
    device/huawei/u8818/prebuilt/system/lib/modules/xc5000.ko:system/lib/modules/xc5000.ko

PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8818
PRODUCT_DEVICE := u8818
PRODUCT_BRAND := huawei

