include $(THEOS)/makefiles/common.mk
ARCHS = arm64

TWEAK_NAME = HideIconLabels
HideIconLabels_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk
