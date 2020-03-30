[中文](readme.md) |[English](readme_en.md)



| Hardware | Detail |
| ------ | ------ |
| Model | Dell Inspiron 15 7000 Gaming (7567) |
| CPU | Intel Core i7-7700HQ @ 2.80GHz |
| Memory |  16 GB ( DDR4 2400MHz )|
| HardDrive | Hikvision C2000PRO 1T|
| Graphics Card | Intel HD Graphics 630 (platform-id:0x591B0000) |
| Sound Card | Realtek ALC256 ( layout-id:16)|
| Network Card | Dell DW1820A (BCM94350ZAE) |

## Before Install
* BIOS Settings:
	* set `SATA Mode` to `AHCI` , Please Google it if you want to save your data；
	* disable `Legacy Option ROMs`；
	* disable `Secure Boot`；
	* disable `VT ` (if you don`t need )；
	* disable SGX；
* Intel AC3165 have been driven in Hackintosh , but works not so good , if you need you can see [here](https://github.com/zxystd/IntelBluetoothFirmware);
* Please disable WiFi and Bluetooth in BIOS , and Then install macOS，finally put `Bluetooth Driver` and `WiFi Driver` into `\EFI\Clover\kexts\Other`  from `\EFI\Clover\kexts\Off`；
* You PC maybe reboot When installing are two minutes remaining，don`t worry about it ，Select the disk you just installed to boot；`
* `Bluetooth Driver`: ~~`BrcmBluetoothInjector.kext` `BrcmFirmwareData.kext` `BrcmPatchRAM2.kext` ；~~`DW1820ABT`
* `CPUFriend:`  7700HQ and 5700HQ customed CPUFriend in SMBIOS 14,1；Performance mode  is Blance，if you want custom it [look at this](https://github.com/stevezhengshiqi/one-key-cpufriend/blob/master/README_CN.md)；
* `Headphone Driver`:`ComboJack_For_Dell7567_Only` can drive your headphone and microphone, but this driver is modified for 7567 only, other PC may not works;
* I made some scripts in `Scripts` folder, choose what you like;

## Unlock CFG（Wrong operating  perhaps damage your hardware）

I recommend the following three methods，tools are in `Unlock-CFG` folder，针针小站's method is the better，It is also possible to extract the original BIOS without PE, and it is the same to extract directly in Windows 10!

针针小站：[【Hackintosh】Dell Precision 5510 解锁BIOS高级设置](https://hyejeong.cn/unlockbios)

独行秀才的老窝：[OpenCore引导Mac下解除CFG LOCK锁定](https://shuiyunxc.gitee.io/2020/02/13/Unlock/index/)

云屋小站：[无需刷BIOS！使用setup_var命令解锁MSR 0xE2锁定，修改dvmt值，开启AHCI](https://www.misonsky.cn/115.html)

## Future updates are based on PC witch Disabled `CFG lock`, please select the corresponding` config.plist` yourself

| match | CFG_Unlocked Laptop |CFG_Locked Laptp |
| :----: | :----: | :----: |
| Use config_CFG_lock.plist | better HWP and performance | May fail to boot |
| Use config_CFG_Lock.plist | ordinary HWP and performance | ordinary HWP and performance |


### Here is an easy way at the end of this article



## Change log



* 2018.10.13
	
	* First release;
	
	  
	
* 2018.11.24
	
	* The router was used in 5Ghz, Bluetooth works well!  No disconnection!
	* USBInjectAll.kext update to 2018-11-08 (0.7.1)，FakePCIID_Broadcom_WiFi.kext and FakePCIID.kext updated to 2018-1027，form RehubMan ，Thanks！！！
	
	* Updated a few pictures (some of them were taken last time, I forgot to put them here)
	
	  
	
* 2018.12.3
	
	* Added ACPlugFix. This patch is used to repair the broken sound of the headphones. It comes from the Internet and has instructions in it. Thank you for making this patch!！
	
	  
	
* 2018.12.11
	
	* Clover updated to Clover_v2.4k_r4701.RM-4963.ca6cca7c，from RehubMan，Thanks！
	
* dropped FakePCIID_Broadcom_WiFi.kext，It ’s useless if you don’t change the WIFI card！
	
	  
	
* 2019.4.30	
	* Clover updated to Clover_v4903;	
	* Added 10.14.x USB port Limit patch;
	* Added DVMT patch;
	* Added NoTouchID.kext;
	* Removed applebacklightinjecktor.kext and applebacklight patch;
	* Removed the Bluetooth driver, you need to drive it yourself
	* Driver update
		* WhateverGreen_v1.2.8
		* VoodooPS2Controller_v1.9.2
		* Lilu_v1.3.5
		
		* AppleALC_v1.3.6
		
		  
		
	
* 2019.5.1

  * Added and fixed applebacklightinjecktor.kext and applebacklight patches to fix the bug that the screen's minimum brightness is too bright;

  

* 2019.5.3
	* Added AirportBrcmFixup.kext, removed FakePCIID.kext, FakePCIID_BroadcomWiFi.kext, support restart, support switching WIFI, support built-in network card
	
	* Updated VoodooPS2Controller.kext, the touchpad supports right-click menu, supports simple gestures, needs to be set, see above picture
	
	  
	
* 2019.5.2
  * Added CPUFriend, the frequency conversion is smoother, the frequency is more stable, and the temperature is lower
  * Update NoTouchID, safety identification is completed in an instant, no needed waiting;
  * Removed useless drivers

  * Driver update

    * Clover_v2.4k r4920

    * NoTouchID.kext_v1.0.1

    

* 2019.5.13
	
	* Using VirtualSMC driver, compared to FakeSMC, it is difficult to say which one is better. To be sure, the former is updated;
	* Use Hackintool to drive USB, card reader has been driven;
	* Add the `-rad24` parameter, forcing the use of 24-bit color, the color transition is smoother, you can remove the 32-bit
	* Using the brightness drive of international friends, you can use [Fn + S] and [Fn + B] to control it, thanks !
	* Because the SMCBatteryManager driver is used, the battery information is not very complete. you can change to ACPIBatteryManager to show more.



* 2019.12.29
	* Adapted 10.15.2；
	
	* Thanks for the mirror provided by `黑果小兵`；
	
	* Thanks for the SSDT-LPC.aml provided by `kttde` and [the temporary solution for beta4 upgrade beta5 stuck in AppleNVME Assert Failed](http://bbs.pcbeta.com/viewthread-1825003-1-1.html);
	
	  


* 2020.1.1
	
	* Fixed CPU frequency conversion, measured about 14 gears by CPU-S;
	
	  


* 2020.1.18
  * Clover updated to v5103；
  * Used the VoodooI2C driver from  `Nihhaar`, thank you very much! !! !! At present, the touchpad can be driven, but it is not sensitive to win10;
  * Added support for 4K screens, please go to the `Cover` directory and rename ` config_4K.plist` to `config.plist`. mine is 1080p;
  * Known issues：
    * Can't sleep completely, sleep for a long time will reboot；
    * I tried a lot of ways to drive subwoofer, but I still can’t drive it；

  


* 2020.2.2 
  * Stay at home and research hackintosh when you are fine! Travel less!

  * I forgot to check the yesterday's Clover file, which caused the installation to fail or could not enter the system. Say sorry to everyone here! I Fixed it today, it is recommended to delete the original file, keep only SMBIOS information, do not overwrite the original file;

  * Add graphics card information and modify the video memory to 2048M;

  * Re-customize USB, built-in Bluetooth, camera , and USB2.0 on the left side is built-in;

  * Lilu.kext、AllpleALC.kext、AirportBrcmFixup.kext、NoTouchID.kext Regular updated；

  * Known issues：

    * Good and bad during sleep；

      



* 2020.2.24
	
	* After changing the network card on this model, the functions have become perfect;
	* Thanks to my friend `VicQ`. The information of the sound card node produced by him has successfully driven both the subwoofer and the front speaker. It has been submitted to the author of` AppleALC` for review. It should not be unexpected that the next version should be released. At the request of `VicQ`, the` AppALC.kext` file for testing will not be released for the time being, pending the official release;
	* After lookup the webpage, blog and comparing repeatedly, it is best to repair the EC by renaming `ECDV to EC`;
	* Streamlined renaming rules, drivers and patches；
	* Known issues：
	
		* The HD630 graphics card can almost only run at about 400MHz, and it can run higher in a very short period of time, I hope everyone going to test it ;
		
		  
	
* 2020.3.8

  * Merge 1080P and 4K Config.plist files;
  * Inject the PCI device properties of the network card, graphics card, and sound card. If you replace DW1820A, please manually remove the `#` from `Config.plist / Devices / properties / # PciRoot (0x0) / Pci (0x1C, 0x5) / Pci (0x0,0x0)`  to Enable it, it helps to solve the problem that some mobile phone hot spots cannot be found;
  * Known issues：
  	* The use of `ALCplugFix` +` CodecCommander.kext` on the headset may cause the built-in MIC and the headset MIC to be unavailable when the headset is plugged in. This is caused by the incompatibility between the driver and the sound card node. `VicQ` was modified to make a new driver To solve this problem, still testing;
  	
  	* Adding the boot parameter `-disablegfxfirmware` can solve the problem that the graphics card can only reach up to 400Mhz. Use it at your own discretion；
  	
  	  


* 2020.3.15
	* Re-customize the touchpad driver, thank you `VicQ` brother, use `GPI0 interrupt` mode to drive, more efficient and more follow-up;
	* Use ApplePS2Controller.kext instead VoodooPS2Controller.kext , resulting in `Fn + S` ` Fn + B` being unavailable, but can be changed to other shortcut keys in `Preferance`, but the ` Screen Brightness` option in `Settings` is hidden, it displays item with an external keyboard. Perhaps you can change it to VoodooPS2Controller.kext, but it is not easy to drive and it is easy to make your touchpad lose driver;
	* The HD630 can reach 1.1Ghz, but it is unstable, which should be the reason for scheduling;
	* Removed  unnecessary drivers；
	* Regular updates；
	* Built-in network card；
	* Known issues:
		
		* Hackintosh sleeps well when plug out AC Adaptor. When AC adapter plug in, Hackintosh can't sleep；
		
		  
		
	
* 2020.3.20
	* In the future, I only provide `config.plist` based on CFG-locked is disabled \. If it is not unlocked, please configure `config.plist` it yourself;
	* Drive the `f11` ` f12` brightness shortcut keys (thanks to `VicQ`);
	* Compiled `BrcmBluetoothInjector.kext`` BrcmFirmwareData.kext` `BrcmPatchRAM2.kext` Streamlined and merged into ` DW1820ABT`, only `DW1820A` is supported;
	* Streamlined  and  Compiled `AppleALC.kext` into ` AppleALC256.kext `, which only supports `ALC256`;
	* Regular updates；
	* Known issues：
		
		* Hackintosh sleeps well when plug out AC Adaptor. When AC adapter plug in, Hackintosh can't sleep；
		






## If you acknowledge my efforts, you can support my subsequent updates through `Reward`


|Red envelope|Wechatpay |Alipay|
| :-: | :-: | :-: |
|<img src=".\Screenshots\eve.png" alt="Alipay envelope"  />|<img src=".\Screenshots\wechatpay.png" alt="Wechatpay"  />|<img src=".\Screenshots\alipay.png" alt="Alipay"  />|


## Gallery

<img src=".\Screenshots\mian.png" alt="关于"  />

<img src=".\Screenshots\i2c.png" alt="触控板完美驱动"  />

<img src=".\Screenshots\freq.png" alt="核显还是表现还是不太好，可能是CPU调度的问题？" style="zoom:50%;" />



<img src=".\Screenshots\brightness.png" alt="image.png"  />




 <img src=".\Screenshots\touchpad.png" alt="按教程设置就行" style="zoom:150%;" />

<img src=".\Screenshots\crw.png" alt="SD读卡器，USB2.0的速度"  />





## Disable CFG-lock (Wrong operating  perhaps damage your hardware)

## Model is not Dell 7567, please do not look at the following methods;

## Upgrading the BIOS almost not Enable the CFG-lock and verify it yourself!

<img src=".\Screenshots\cfg1.png" alt="可以看到地址为0x4DE"  />

1.As you can see from the figure above, the address of the CFG-lock is `0x4DE`, and the default state is ` on` ;

2.Start from `modGRUBShell.efi` (you can add this efi file as a boot item like adding Clover boot item);

3.After booted, enter `setup_var 0x4DE` to see if the return value is ` 0x01` or not. If not `0x01` , please shut down or restart the system. Check the tutorials above to repeat；

4.If it returns `0x01`, you can try to  enter ` setup_var 0x4DE 0x00` , and enter `reboot` to restart the system, and use Hackintool to see the following:

<img src=".\Screenshots\cfg2.png" alt="检查解锁"  />

So far, disable CFG-lock is complete! 

By the way, enable HWP! 

Enjoy it!



## Thanks for watching !