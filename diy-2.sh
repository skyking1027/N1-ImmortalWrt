#!/bin/bash

# 添加包
git clone --depth=1 https://github.com/ophub/luci-app-amlogic package/luci-app-amlogic
git clone --depth=1 https://github.com/vernesong/OpenClash package/OpenClash
sed -i 's/^download-ci-llvm[[:space:]]*=.*/download-ci-llvm = false/' feeds/packages/lang/rust/bootstrap.toml 2>/dev/null || echo -e '[llvm]\ndownload-ci-llvm = false' > feeds/packages/lang/rust/bootstrap.toml
