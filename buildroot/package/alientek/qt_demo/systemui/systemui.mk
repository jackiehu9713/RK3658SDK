###############################################################################
#
# systemui
#
################################################################################

SYSTEMUI_VERSION = 1.0
SYSTEMUI_SITE = $(TOPDIR)/../app/alientek/qt_demo/ui
SYSTEMUI_SITE_METHOD = local

SYSTEMUI_LICENSE = Apache V2.0
SYSTEMUI_LICENSE_FILES = NOTICE
SYSTEMUI_DEPENDENCIES += qt5base qt5declarative qt5multimedia qt5virtualkeyboard qt5remoteobjects

define SYSTEMUI_CONFIGURE_CMDS
        cd $(@D)/systemui; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/camera; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/fileview; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/music; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/notepad; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/photoview; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/player; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/reminders; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/settings; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/udpchat; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/weather; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/hdmiin; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/brightness; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/calculator; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/calendar; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/dashboard; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/key; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/led; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/recorder; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/reminders; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/pcba; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
        cd $(@D)/sysvolume; $(TARGET_MAKE_ENV) $(HOST_DIR)/bin/qmake
endef

define SYSTEMUI_BUILD_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/systemui
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/camera
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/fileview
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/music
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/notepad
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/photoview
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/player
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/reminders
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/settings
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/udpchat
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/weather
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/hdmiin
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/brightness
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/calculator
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/calendar
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/dashboard
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/key
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/led
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/recorder
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/reminders
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/pcba
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/sysvolume
endef
SYSTEMUI_INSTALL_TARGET_DIR = $(TARGET_DIR)/opt/

define SYSTEMUI_INSTALL_TARGET_CMDS
        mkdir -p $(SYSTEMUI_INSTALL_TARGET_DIR)
        cp -r $(@D)/ui/ $(SYSTEMUI_INSTALL_TARGET_DIR)/
        $(INSTALL) -D -m 0755 $(@D)/S50systemui $(TARGET_DIR)/etc/init.d/
endef

$(eval $(generic-package))

