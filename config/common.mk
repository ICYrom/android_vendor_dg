PRODUCT_BRAND ?= drewgaren

ifdef CM_NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=drewgaren
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=drewgaren
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/dg/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/dg/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/dg/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/dg/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/dg/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/dg/prebuilt/common/bin/sysinit:system/bin/sysinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/dg/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/dg/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/dg/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

PRODUCT_COPY_FILES +=  \
    vendor/dg/prebuilt/common/app/BooksTablet.apk:system/app/BooksTablet.apk \
    vendor/dg/prebuilt/common/app/BrowserGoogle.apk:system/app/BrowserGoogle.apk \
    vendor/dg/prebuilt/common/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    vendor/dg/prebuilt/common/app/CameraGoogle.apk:system/app/CameraGoogle.apk \
    vendor/dg/prebuilt/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/dg/prebuilt/common/app/FaceLock.apk:system/app/FaceLock.apk \
    vendor/dg/prebuilt/common/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/dg/prebuilt/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/dg/prebuilt/common/app/Gmail.apk:system/app/Gmail.apk \
    vendor/dg/prebuilt/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/dg/prebuilt/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/dg/prebuilt/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/dg/prebuilt/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/dg/prebuilt/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/dg/prebuilt/common/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/dg/prebuilt/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/dg/prebuilt/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/dg/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/dg/prebuilt/common/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/dg/prebuilt/common/app/Maps.apk:system/app/Maps.apk \
    vendor/dg/prebuilt/common/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/dg/prebuilt/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/dg/prebuilt/common/app/Music.apk:system/app/Music.apk \
    vendor/dg/prebuilt/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/dg/prebuilt/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/dg/prebuilt/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/dg/prebuilt/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/dg/prebuilt/common/app/Street.apk:system/app/Street.apk \
    vendor/dg/prebuilt/common/app/Talk.apk:system/app/Talk.apk \
    vendor/dg/prebuilt/common/app/Videos.apk:system/app/Videos.apk \
    vendor/dg/prebuilt/common/app/VoiceSearch.apk:system/app/VoiceSearch.apk \
    vendor/dg/prebuilt/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/dg/prebuilt/common/app/YouTube.apk:system/app/YouTube.apk \
    vendor/dg/prebuilt/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/dg/prebuilt/common/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/dg/prebuilt/common/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/dg/prebuilt/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/dg/prebuilt/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/dg/prebuilt/common/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/dg/prebuilt/common/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/left_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/nose_base-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-r0-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rn7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.3/right_eye-y0-yi45-p0-pi45-rp7-ri20.2d_n2/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-r0-ri30.4a/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-r0-ri30.4a/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rn30-ri30.5/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rn30-ri30.5/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rp30-ri30.5/full_model.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.3/head-y0-yi45-p0-pi45-rp30-ri30.5/full_model.bin \
    vendor/dg/proprietary/common/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin:system/vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N/full_model.bin \
    vendor/dg/proprietary/FileManager.apk:system/app/FileManager.apk \
    vendor/dg/proprietary/RomManager.apk:system/app/RomManager.apk \
    vendor/dg/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip

# Bring in camera effects & videos
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)
PRODUCT_COPY_FILES +=  \
    vendor/dg/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/dg/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/dg/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Required DG packages
PRODUCT_PACKAGES += \
    LibertySettings \
    Camera \
    Development \
    LatinIME \
    SpareParts \
    Superuser \
    Superuser.apk \
    su

# Optional DG packages
PRODUCT_PACKAGES += \
    VideoEditor \
    VoiceDialer \
    SoundRecorder \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# Custom DG packages
PRODUCT_PACKAGES += \
    Trebuchet \
    audio_effects.conf

PRODUCT_PACKAGE_OVERLAYS += vendor/dg/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/dg/overlay/common

PRODUCT_VERSION_MAJOR = 9
PRODUCT_VERSION_MINOR = 0
PRODUCT_VERSION_MAINTENANCE = 0-RC0

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K

ifdef CM_NIGHTLY
    CM_VERSION :=$(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-NIGHTLY-$(CM_BUILD)
else
    ifdef CM_SNAPSHOT
        CM_VERSION := $(PRODUCT_VERSION_MAJOR)-$(shell date +%Y%m%d)-SNAPSHOT-$(CM_BUILD)$(CM_EXTRAVERSION)
    else
        ifdef CM_RELEASE
            CM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(CM_BUILD)
        else
            CM_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)-$(CM_BUILD)-KANG
        endif
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
  ro.cm.version=$(CM_VERSION) \
  ro.modversion=$(CM_VERSION)
