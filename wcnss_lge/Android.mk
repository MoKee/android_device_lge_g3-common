# Copyright (C) 2011 The MoKee OpenSource project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(filter d850 d852 d855 vs985 f400,$(TARGET_DEVICE)),)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := wcnss_lge_client.c
LOCAL_C_INCLUDES += hardware/qcom/wlan/wcnss_service
LOCAL_CFLAGS += -Wall
LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libwcnss_qmi

include $(BUILD_SHARED_LIBRARY)

endif
