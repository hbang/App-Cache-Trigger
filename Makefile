include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AppCacheTriggerHooks
AppCacheTriggerHooks_FILES = Blocker.x

include $(THEOS_MAKE_PATH)/tweak.mk

after-stage::
	mkdir -p $(THEOS_STAGING_DIR)/DEBIAN
	cp triggers postinst $(THEOS_STAGING_DIR)/DEBIAN
