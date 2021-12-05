LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto_static
LOCAL_C_INCLUDES := $(LOCAL_PATH)/src/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src/include
LOCAL_CFLAGS += -DBORINGSSL_IMPLEMENTATION -fvisibility=hidden -DBORINGSSL_SHARED_LIBRARY -DBORINGSSL_ANDROID_SYSTEM -DOPENSSL_SMALL -D_XOPEN_SOURCE=700 -Werror -Wno-unused-parameter
LOCAL_CPPFLAGS += -Wall -Werror
include $(LOCAL_PATH)/crypto-sources.mk
include $(BUILD_STATIC_LIBRARY)
