################################################################################
#
# usbgadget
#
################################################################################

USBGADGET_VERSION = 1
USBGADGET_SOURCE =
USBGADGET_SITE =

define USBGADGET_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_TESTDISK_PATH)/package/usbgadget/gadget.conf \
		$(TARGET_DIR)/etc/gadget.conf
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL_TESTDISK_PATH)/package/usbgadget/S30gadget \
		$(TARGET_DIR)/etc/init.d/S30gadget
endef

$(eval $(generic-package))
