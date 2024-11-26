#!/bin/sh
# Description: (After Update feeds)

# Modify default IP
sed -i 's/192.168.1.1/192.168.69.1/g' package/base-files/files/bin/config_generate

# Set DHCP IP Address start and end
#sed -i "s/option start.*/option start \'2\'/g" package/network/services/dnsmasq/files/dhcp.conf
#sed -i "s/option limit.*/option limit \'55\'/g" package/network/services/dnsmasq/files/dhcp.conf
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/OpenWrt24-AX3000T-IPV4/g' package/base-files/files/bin/config_generate

# Step 3: 修改默认时区
# 将默认时区从 "UTC" 修改为 "CST-8"
sed -i "s/'UTC'/'CST-8'/g" package/base-files/files/bin/config_generate

# Step 4: 增加时区名称设置为 "Asia/Shanghai"
# 在时区设置后添加区域名称设置
sed -i "/set system.\@system\[-1\].timezone='CST-8'/a\ \ \ \ set system.\@system\[-1\].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate
