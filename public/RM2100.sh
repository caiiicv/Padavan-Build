#####################################################################
# cd /opt/rt-n56u/trunk 执行在这个目录下
#
# 修改默认参数（不同设备拷贝到相应 *.sh)          by: TurBoTse
#####################################################################

lan_ip="192.168.2"                          # LAN 地址 别写后面的 .1
default_path="./user/shared"                # 默认配置路径
config="./configs/templates/PSG1218.config" # 默认配置文件

echo "修改 LAN IP 地址"
sed -i "s/192.168.10/$lan_ip/g" $default_path/defaults.h

# echo "打开2G无线桥接"
# sed -i 's/{ "rt_mode_x", "0" }/{ "rt_mode_x", "4" }/g' $default_path/defaults.c

# echo "打开5G无线桥接"
# sed -i 's/{ "wl_mode_x", "0" }/{ "wl_mode_x", "4" }/g' $default_path/defaults.c

# echo "集成 KMS 激活服务器"
# sed -i "s/CONFIG_FIRMWARE_INCLUDE_VLMCSD=n/CONFIG_FIRMWARE_INCLUDE_VLMCSD=y/g" $config

