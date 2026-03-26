#!/bin/bash

# 添加包
#git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
#git clone --depth=1 https://github.com/vernesong/OpenClash package/OpenClash
sed -i 's/^download-ci-llvm[[:space:]]*=.*/download-ci-llvm = false/' feeds/packages/lang/rust/bootstrap.toml 2>/dev/null || echo -e '[llvm]\ndownload-ci-llvm = false' > feeds/packages/lang/rust/bootstrap.toml

rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-filebrowser



# 修改主机名
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
