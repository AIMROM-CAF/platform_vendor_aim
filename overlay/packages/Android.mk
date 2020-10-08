include $(call all-subdir-makefiles)

include $(CLEAR_VARS)

LOCAL_MODULE := aim-overlays
LOCAL_REQUIRED_MODULES := \
    AccentColorAndroidGreenOverlay \
    AccentColorOrangeOverlay \
    AccentColorTealOverlay \
    FontGoogleSansOverlay \
    FontSlateForOnePlusOverlay

include $(BUILD_PHONY_PACKAGE)
