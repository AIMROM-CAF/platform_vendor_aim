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
# Lineage OTA update package
ifneq ($(BUILD_WITH_COLORS),0)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"
  CL_YLW="\033[33m"
  CL_BLU="\033[34m"
  CL_MAG="\033[35m"
  CL_CYN="\033[36m"
  CL_RST="\033[0m"
endif

AIM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(AIM_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(AIM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(AIM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(AIM_TARGET_PACKAGE).md5sum
	@echo -e ${CL_RED} "" ${CL_RED}
	@echo -e ${CL_RED} "       d8888 8888888 888b     d888     8888888b.   .d88888b.  888b     d888 "
	@echo -e ${CL_RED} "      d88888   888   8888b   d8888     888   Y88b d88P' 'Y88b 8888b   d8888 "
	@echo -e ${CL_RED} "     d88P888   888   88888b.d88888     888    888 888     888 88888b.d88888 "
	@echo -e ${CL_RED} "    d88P 888   888   888Y88888P888     888   d88P 888     888 888Y88888P888 "
	@echo -e ${CL_RED} "   d88P  888   888   888 Y888P 888     8888888P   888     888 888 Y888P 888 "
	@echo -e ${CL_RED} "  d88P   888   888   888  Y8P  888     888 T88b   888     888 888  Y8P  888 "
	@echo -e ${CL_RED} " d8888888888   888   888   '   888     888  T88b  Y88b. .d88P 888   '   888 "
	@echo -e ${CL_RED} "d88P     888 8888888 888       888     888   T88b  'Y88888P'  888       888 "
	@echo -e ${CL_RED} "                                                                            "
	@echo -e ${CL_RED} "" ${CL_RED}
	@echo -e ${CL_BLD}${CL_GRN}"             	  Build completed! Now Flash the Rom and ENJOY!!  " ${CL_GRN}
	@echo -e ${CL_BLD}${CL_GRN}" ============================================================================================================" ${CL_GRN}
	@echo -e ${CL_BLD}${CL_RED}"       		AIM ROM is based on Android 10.x developed by TEAM-AIM 	 " ${CL_RED}
	@echo -e ${CL_BLD}${CL_BLU}" =====================================-Package complete-=====================================================" ${CL_BLU}
	@echo -e ${CL_BLD}${CL_GRN}" zip: $(AIM_TARGET_PACKAGE)" ${CL_GRN}
	@echo -e ${CL_BLD}${CL_RED}" ============================================================================================================" ${CL_RED}

