#!/bin/bash

# 添加包
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
git clone --depth=1 https://github.com/OldCoding/luci-app-filebrowser package/luci-app-filebrowser
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# 修改默认主题
sed -i 's/luci-theme-design/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改主机名
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
