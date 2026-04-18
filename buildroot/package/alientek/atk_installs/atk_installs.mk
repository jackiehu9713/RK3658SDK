################################################################################
#
# atk_dlrk3568 / atk_dlrk3588 installs
#
################################################################################

ATK_INSTALLS_SITE_METHOD = local
ATK_INSTALLS_INSTALL_STAGING = YES
ATK_INSTALLS_SITE = $(TOPDIR)/package/alientek/atk_installs/src
ATK_INSTALLS_DEPENDENCIES += qt5base alsa-utils

define ATK_INSTALLS_INSTALL_TARGET_CMDS
                mkdir -p $(TARGET_DIR)/usr/qml/AQuickPlugin
                mkdir -p $(TARGET_DIR)/etc/init.d
                cp -r $(@D)/AQuickPlugin/* $(TARGET_DIR)/usr/qml/AQuickPlugin
                cp -r $(@D)/extra.sh $(TARGET_DIR)/etc/profile.d
                cp -r $(@D)/S98rknn_server $(TARGET_DIR)/etc/init.d
                cp -r $(@D)/S01alactl $(TARGET_DIR)/etc/init.d
                cp -r $(@D)/*asound.state $(TARGET_DIR)/var/lib/alsa
                mkdir -p $(TARGET_DIR)/usr/share/sounds
                mkdir -p $(TARGET_DIR)/lib/modules/5.10.160
                cp -r $(@D)/test.wav $(TARGET_DIR)/usr/share/sounds
                cp -r $(@D)/shell $(TARGET_DIR)/root
endef

define ATK_INSTALLS_INSTALL_STAGING_CMDS
		mkdir -p $(STAGING_DIR)/usr/qml/AQuickPlugin
		cp -r $(@D)/AQuickPlugin/* $(STAGING_DIR)/usr/qml/AQuickPlugin
endef
$(eval $(generic-package))

