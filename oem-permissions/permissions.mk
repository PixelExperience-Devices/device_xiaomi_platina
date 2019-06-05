# Copyright (C) 2019 The Android Open Source Project
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
#

# Google Permissions
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/oem-permissions/google/pixel_2016_exclusive.xml:system/etc/permissions/pixel_2016_exclusive.xml \
	$(LOCAL_PATH)/oem-permissions/google/pixel_2017_exclusive.xml:system/etc/permissions/pixel_2017_exclusive.xml \
	$(LOCAL_PATH)/oem-permissions/google/pixel_2018_exclusive.xml:system/etc/permissions/pixel_2018_exclusive.xml \
	$(LOCAL_PATH)/oem-permissions/google/pixel_2019_midyear_exclusive.xml:system/etc/permissions/pixel_2019_midyear_exclusive.xml \
	$(LOCAL_PATH)/oem-permissions/google/pixel_experience_2019_midyear.xml:system/etc/permissions/pixel_experience_2019_midyear.xml \
	$(LOCAL_PATH)/oem-permissions/google/pixel_experience_2018.xml:system/etc/permissions/pixel_experience_2018.xml \
        $(LOCAL_PATH)/oem-permissions/google/pixel_experience_2017.xml:system/etc/permissions/pixel_experience_2017 \
	$(LOCAL_PATH)/oem-permissions/google/nexus.xml:system/etc/permissions/nexus.xml \
	$(LOCAL_PATH)/oem-permissions/google/google_build.xml:system/etc/permissions/google_build.xml \
	$(LOCAL_PATH)/oem-permissions/google/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml

