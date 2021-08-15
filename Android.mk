
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),5015a)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
