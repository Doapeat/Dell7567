#!/bin/bash

echo 删除 Clover 残留

echo "开启写入权限..."
sudo mount -uw / && killall Finder

echo 删除 Clover 设置面板
sudo rm -rf /Library/PreferencePanes/Clover.prefPane

#echo 删除 ESP 分区下的 nvram.plist
#sudo rm -rf /Volume/Untitled/nvram.plist


echo 删除 RC 脚本
sudo rm -rf "/etc/rc.clover.lib"
sudo rm -rf "/etc/rc.boot.d/10.save_and_rotate_boot_log.local"
sudo rm -rf "/etc/rc.boot.d/20.mount_ESP.local"
sudo rm -rf "/etc/rc.boot.d/70.disable_sleep_proxy_client.local.disabled"
sudo rm -rf "/etc/rc.boot.d/80.save_nvram_plist.local"
sudo rm -rf "/etc/rc.shutdown.local"
sudo rm -rf "/etc/rc.boot.d"
sudo rm -rf "/etc/rc.shutdown.d"


echo 删除 Clover 新开发的 NVRAM 守护程序 `CloverDaemonNew`
launchctl unload '/Library/LaunchDaemons/com.slice.CloverDaemonNew.plist'
sudo rm -rf '/Library/LaunchDaemons/com.slice.CloverDaemonNew.plist'
sudo rm -rf '/Library/Application Support/Clover/CloverDaemonNew'
sudo rm -rf '/Library/Application Support/Clover/CloverLogOut'
sudo rm -rf '/Library/Application Support/Clover/CloverWrapper.sh'
