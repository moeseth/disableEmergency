include theos/makefiles/common.mk

removeEmergency_FRAMEWORKS = UIKit QuartzCore

TWEAK_NAME = removeEmergency
removeEmergency_FILES = Tweak.xm
SUBPROJECTS=remove

include $(FW_MAKEDIR)/tweak.mk
include	$(FW_MAKEDIR)/common.mk
include $(FW_MAKEDIR)/aggregate.mk
