#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

add_lunch_combo omni_IHU519G-user
add_lunch_combo omni_IHU519G-userdebug
add_lunch_combo omni_IHU519G-eng

export FOX_BUILD_DEVICE=IHU519G
export OF_MAINTAINER=Ashuai
export FOX_VANILLA_BUILD=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
