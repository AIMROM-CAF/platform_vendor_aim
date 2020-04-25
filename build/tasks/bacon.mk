# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------
# AIM OTA update package
ifneq ($(BUILD_WITH_COLORS),0)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"
  CL_RST="\033[0m"
endif

AIM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(AIM_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(AIM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(AIM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(AIM_TARGET_PACKAGE).md5sum
	@echo -e " "
	@echo -e ${CL_RED}"           d8888 8888888 888b     d888 8888888b.   .d88888b.  888b     d888    "${CL_RST}
	@echo -e ${CL_RED}"          d88888   888   8888b   d8888 888   Y88b d88P' 'Y88b 8888b   d8888    "${CL_RST}
	@echo -e ${CL_RED}"         d88P888   888   88888b.d88888 888    888 888     888 88888b.d88888    "${CL_RST}
	@echo -e ${CL_RED}"        d88P 888   888   888Y88888P888 888   d88P 888     888 888Y88888P888    "${CL_RST}
	@echo -e ${CL_RED}"       d88P  888   888   888 Y888P 888 8888888P   888     888 888 Y888P 888    "${CL_RST}
	@echo -e ${CL_RED}"      d88P   888   888   888  Y8P  888 888 T88b   888     888 888  Y8P  888    "${CL_RST}
	@echo -e ${CL_RED}"     d8888888888   888   888   '   888 888  T88b  Y88b. .d88P 888   '   888    "${CL_RST}
	@echo -e ${CL_RED}"    d88P     888 8888888 888       888 888   T88b  'Y88888P'  888       888    "${CL_RST}
	@echo -e " "
	@echo -e ${CL_GRN}"Package complete:"${CL_RST} >&2
	@echo -e "Name: $(AIM_VERSION).zip" >&2
	@echo -e "MD5 : `cat $(AIM_TARGET_PACKAGE).md5sum | awk '{print $$1}'`" >&2
