#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 注释掉原luci
sed -i 'luci/i\#' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#Mi AC2100使用
sed -i '$a src-git luci https://github.com/openwrt/luci;openwrt-18.06' feeds.conf.default
sed -i '$a src-git small https://github.com/hepsontam/small' feeds.conf.default
sed -i '$a src-git openwrtpackages https://github.com/garypang13/openwrt-packages' feeds.conf.default
