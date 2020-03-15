#!/bin/bash

echo "开启写入权限..."
sudo mount -uw / && killall Finder

echo "修复权限..."
sudo chmod -R 755 /System/Library/Extensions
sudo chown -R root:wheel /System/Library/Extensions
sudo chmod -R 755 /Library/Extensions
sudo chown -R root:wheel /Library/Extensions
sudo chown root:admin /

echo "重建缓存..."
sudo kextcache -i /

