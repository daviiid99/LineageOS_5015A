
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),5015A)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
