include $(TOPDIR)/rules.mk

PKG_NAME:=mproxy
PKG_VERSION=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=panda-mute <wxuzju@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/openwrt-develop/mproxy.git
PKG_SOURCE_VERSION:=0e0e27192e91ff08f4e235065b6b24c642541334

PKG_SOURCE_SUBDIR:=$(PKG_NAME)
PKG_SOURCE:=$(PKG_SOURCE_SUBDIR).tar.gz
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/mproxy
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Lightway HTTP proxy
	URL:=http://forums.mydigitallife.info/threads/50234
endef

define Package/mproxy/description
	Lightway HTTP proxy in C.
endef

define Package/mproxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mproxy $(1)/usr/bin/mproxy
endef

$(eval $(call BuildPackage,mproxy))
