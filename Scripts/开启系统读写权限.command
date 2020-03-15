#!/bin/bash

echo "开启系统写入权限..."
sudo mount -uw / && killall Finder

