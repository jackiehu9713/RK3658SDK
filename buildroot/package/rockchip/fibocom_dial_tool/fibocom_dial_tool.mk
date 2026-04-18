################################################################################
#
# 广和通QMI拨号工具
#
################################################################################

FIBOCOM_DIAL_TOOL_VERSION = 1.0
FIBOCOM_DIAL_TOOL_SITE_METHOD = local
FIBOCOM_DIAL_TOOL_SITE = $(TOPDIR)/../external/Fibocom-dial_Linux_Tool
FIBOCOM_DIAL_TOOL_LICENSE = Apache V2.0
FIBOCOM_DIAL_TOOL_LICENSE_FILES = NOTICE

define FIBOCOM_DIAL_TOOL_BUILD_CMDS
    $(TARGET_MAKE_ENV) $(MAKE) -C $(@D) CC=$(TARGET_CC)
endef

define FIBOCOM_DIAL_TOOL_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/fibocom-dial $(TARGET_DIR)/usr/bin/fibocom-dial
    $(INSTALL) -D -m 0755 $(@D)/multi-pdn-manager $(TARGET_DIR)/usr/bin/multi-pdn-manager
    $(INSTALL) -D -m 0755 $(@D)/fibo_qmimsg_server $(TARGET_DIR)/usr/bin/fibo_qmimsg_server
endef

$(eval $(generic-package))
