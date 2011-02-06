include theos/makefiles/common.mk

BUNDLE_NAME = remove
remove_FILES = remove.mm
remove_INSTALL_PATH = /Library/PreferenceBundles
remove_FRAMEWORKS = UIKit
remove_PRIVATE_FRAMEWORKS = Preferences

include $(FW_MAKEDIR)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(FW_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(FW_STAGING_DIR)/Library/PreferenceLoader/Preferences/remove.plist$(ECHO_END)
