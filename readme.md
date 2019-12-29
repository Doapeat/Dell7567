##之前有人让我建群，我懒，直到现在很多人遇到了问题找我，我才发现真是能力越大，责任越大，所以建个交流群吧![](https://upload-images.jianshu.io/upload_images/16811449-ef82375ff85c3a2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


话不多说，先上配置

| 配置 / Hardware | 详情 / Detail|
| ------ | ------ | 
| 型号 / Model | Dell Inspiron 15 7000 Gaming (7567) |
| 处理器 / CPU | Intel Core i7-7700HQ @ 2.80GHz |
| 内存 / Memory|  16 GB ( Hynix DDR4 2400MHz )|
| 硬盘 / HardDrive| Hikvision C2000PRO 1T|
| 显卡 / Graphics Card| Intel HD Graphics 630 (platform-id:0x591B0000) |
| 声卡 / Sound Card | Realtek ALC256 ( layout-id:2/56 )|
| 网卡 / Network Card | Dell DW1820A ( BCM94350ZAE ) |

## 已知问题


## 注意事项
* 1.适配系统： macOS 10.14 各版本 （10.14、 10.14.4 已测试通过）

* 2.未使用ssdt-x.aml变频,已测试使用Clover仿冒MacBookPro14,3，完美变频。看见有人说MacBookPro14,3存在问题，不能使用HDMI，建议换MacBookPro14,1，目前HDMI不能用，由于精力有限，暂时不换！  


* 5.有机友说更新以后进不去安装界面，可以看看这里 [新问题，更新以后进不去安装界面](https://github.com/Doapeat/Dell7567/issues/7 "打开链接")。
* 6.这次附带一个自己的文章[DW1820A安装windows驱动教程（针对戴尔机型）](https://www.jianshu.com/p/6c6c5bf0dc54)。

## 图片欣赏
![](https://upload-images.jianshu.io/upload_images/16811449-fdf0ed11b1f0ab98.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://upload-images.jianshu.io/upload_images/16811449-0e02c0d48109d649.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![电池](https://upload-images.jianshu.io/upload_images/16811449-ee57efab642c5cfa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![声卡](https://upload-images.jianshu.io/upload_images/16811449-aca97b641bd46047.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![显卡](https://upload-images.jianshu.io/upload_images/16811449-54fa2b645f3ffa2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![DW1820A](https://upload-images.jianshu.io/upload_images/16811449-c0fa2720d8bd6f0a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![](https://upload-images.jianshu.io/upload_images/16811449-aec25a87ce5ca74c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![之前有24档的😢](https://upload-images.jianshu.io/upload_images/16811449-bc0be88289d0a34d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![运行稳定，温度还低](https://upload-images.jianshu.io/upload_images/16811449-cc7de1a70e0880f0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

 ![按教程设置就行](https://upload-images.jianshu.io/upload_images/16811449-13ffc1480e4bdc31.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![读卡器](https://upload-images.jianshu.io/upload_images/16811449-c3c9672a1bc267a4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![SD读卡器，USB2.0的速度](https://upload-images.jianshu.io/upload_images/16811449-85e8c48f118d240d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


## 更新日志
* 2019.12.29
	* 安装注意事项：
		* 1.从BIOS中关闭WiFi和蓝牙再安装，安装完之后再开启并注入驱动，驱动位于/EFI/Clover/kexts/Other/Bluetooth；
		* 2.安装过程中剩余2分钟安装完成时会自动重启，不用担心，直接选择刚才安装的盘启动；
	* 适配10.15.2；
	* 感谢`黑果小兵`提供的镜像；
	* 感谢`kttde`提供的SSDT-LPC.aml和[关于beta4升级beta5卡在AppleNVME Assert Failed的暂时解决办法](http://bbs.pcbeta.com/viewthread-1825003-1-1.html)；
	* 已知问题：
		* 耳机噪音暂未修复；
		* CPU变频暂未修复；
* 2019.5.13
	* 使用VirtualSMC驱动，和FakeSMC相比，很难说哪个更好，可以肯定的是前者更新
	* 使用Hackintool驱动USB，读卡器已驱动
	* 加入`-rad24`参数，强制使用24位色彩，颜色过渡更顺滑，想使用32位的可以去除
	* 使用国际友人的亮度驱动，可以使用【Fn+S】和【Fn+B】进行控制（在此感谢）
	* 由于使用SMCBatteryManager驱动，电池信息不是很完整，有需要的可以换成ACPIBatteryManager

* 2019.5.3
	* 添加AirportBrcmFixup.kext，删除FakePCIID.kext、FakePCIID_BroadcomWiFi.kext，支持重启，支持切换WIFI，支持网卡内建
	* 更新VoodooPS2Controller.kext，触控板支持右键菜单，支持简单手势，需设置，看上图
* 2019.5.2
	* 添加CPUFriend，变频更顺滑，频率更稳定，温度更低
	* 更新NoTouchID，安全鉴定瞬间完成，不用风火轮
	* 精简无用驱动
 	* 驱动更新
 		* Clover_v2.4k r4920
 		* NoTouchID.kext_v1.0.1

* 2019.5.1
 	* 添加并修正applebacklightinjecktor.kext和applebacklight补丁，以修复屏幕最低亮度过亮的Bug
	
* 2019.4.30	
	* Clover更新到Clover_v4903	
	* 新增10.14.x解除USB端口限制补丁
	* 新增DVMT修正补丁
	* 新增NoTouchID驱动
	* 删除applebacklightinjecktor.kext和applebacklight补丁
	* 删除蓝牙驱动，需要的自行驱动吧
	* 驱动更新
		* WhateverGreen_v1.2.8
		* VoodooPS2Controller_v1.9.2
		* Lilu_v1.3.5
		* AppleALC_v1.3.6

* 2018.12.11
	* Clover更新到Clover_v2.4k_r4701.RM-4963.ca6cca7c，来自RehubMan，感谢！
	* 去掉了FakePCIID_Broadcom_WiFi.kext，没换网卡的有这个也没用！
	* 修复了Clover引导界面卡的问题，大家说的Clover界面卡的问题我试了5次，没复现卡的情况，经一个好友反馈，卡顿的情况也不再出现，初步判断是因为用了太花哨的主题，占用资源过多导致

* 2018.12.3
	* 添加了ALCPlugFix，这个补丁是用来修复耳机破音，源自网络 ，里面有用法说明，感谢制作此补丁的大婶！！！

* 2018.11.24
	* 路由器使用了5Ghz，蓝牙正常！宿舍8M内都正常！听了20min不存在断开连接！
	* USBInjectAll.kext 更新到2018-11-08 (0.7.1)，FakePCIID_Broadcom_WiFi.kext 和 FakePCIID.kext更新到2018-1027，来自RehubMan大神，感谢！！！
	* 更新几张图片（有的是上次截的，忘了放在这里面）

* 2018.10.13
	* 首次发布，所有使用的驱动都是当前最新


## 如果你认可我的努力，可以通过 `打赏` 支持我后续的更新
 

|支付宝红包|微信 |支付宝|
| --- | --- | --- |
|![Alipay envelope](https://upload-images.jianshu.io/upload_images/16811449-4176ea54843483f4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)|![Wechatpay](https://upload-images.jianshu.io/upload_images/16811449-3f1be37277bad3c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)|![Alipay](https://upload-images.jianshu.io/upload_images/16811449-7a881429acebdf7d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)|

## 闲扯


## 感谢浏览！！！