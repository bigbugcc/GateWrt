#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.10.1
sed -i 's/192.168.1.1/192.168.10.5/g' package/base-files/files/bin/config_generate 

# Hello World
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# Passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default

# Nikki
echo "src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main" >> "feeds.conf.default"