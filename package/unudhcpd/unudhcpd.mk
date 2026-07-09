################################################################################
#
# unudhcpd
#
################################################################################

UNUDHCPD_VERSION = c82e868db336a939c8302cad546402be60244c7f
UNUDHCPD_SITE = https://gitlab.postmarketos.org/postmarketOS/unudhcpd/-/archive/$(UNUDHCPD_VERSION)/unudhcpd-$(UNUDHCPD_VERSION).tar.gz
UNUDHCPD_LICENSE = GPL-3.0
UNUDHCPD_LICENSE_FILES = LICENSE

define UNUDHCPD_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 $(BR2_EXTERNAL_TESTDISK_PATH)/package/unudhcpd/unudhcpd.conf \
		$(TARGET_DIR)/etc/unudhcpd.conf
	$(INSTALL) -D -m 755 $(BR2_EXTERNAL_TESTDISK_PATH)/package/unudhcpd/S41unudhcpd \
		$(TARGET_DIR)/etc/init.d/S41unudhcpd
endef

$(eval $(meson-package))
