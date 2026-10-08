#!/bin/bash

# 添加 nikki feed
#grep -qF 'src-git nikki' feeds.conf.default || \
  #echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> feeds.conf.default
 sed -i '$a src-git kiddin9 https://github.com/kiddin9/op-packages' feeds.conf.default
# 更新 feeds（第一次）
./scripts/feeds update -a

# 克隆自定义包
#git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic || true
#git clone --depth=1 https://github.com/Zerogiven-OpenWRT-Packages/luci-app-podman.git package/luci-app-podman || true
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# 安装 feeds
./scripts/feeds install -a
