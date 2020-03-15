#!/bin/bash


path=${0%/*}
sudo launchctl remove /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -rf /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo rm -rf /usr/bin/ALCPlugFix

echo "ALCplugfix卸载完成"
echo
echo
echo "请使用Hackintool重建缓存！！"
echo "请使用Hackintool重建缓存！！"
echo "请使用Hackintool重建缓存！！"
echo 
bash read -p '按任意键以完成'