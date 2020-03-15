#!/bin/bash

if [[ $EUID -ne 0 ]];
then
    exec sudo /bin/bash "$0" "$@"
fi

cd "$( dirname "${BASH_SOURCE[0]}" )"

# uninstall
sudo launchctl unload /Library/LaunchDaemons/com.XPS.ComboJack.plist
sudo launchctl unload /Library/LaunchDaemons/com.7567.ComboJack.plist
sudo rm /Library/LaunchDaemons/com.XPS.ComboJack.plist
sudo rm /Library/LaunchDaemons/com.7567.ComboJack.plist
sudo rm /usr/local/share/ComboJack/l10n.json
sudo rm /usr/local/share/ComboJack/Headphone.icns
sudo rm -r /usr/local/share/ComboJack
sudo rm /usr/local/sbin/hda-verb
sudo spctl --remove /usr/local/sbin/ComboJack
sudo rm /usr/local/sbin/ComboJack
echo
echo "重启生效，同时请手动删除\"VerbStub.kext\" "
echo
exit 0
