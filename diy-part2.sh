#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.111/g' package/base-files/files/bin/config_generate
sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network
# sed -i 's/ucidef_set_interfaces_lan_wan 'eth1' 'eth0'/ucidef_set_interfaces_lan_wan 'eth0' 'eth1'/g' target/linux/rockchip/armv8/base-files/etc/board.d/02_network

# Modify hostname
sed -i 's/OpenWrt/OverPrinceWRT/g' package/base-files/files/bin/config_generate
