##之前有人让我建群，我懒，直到现在很多人遇到了问题找我，我才发现真是能力越大，责任越大，所以建个交流群吧![](https://upload-images.jianshu.io/upload_images/16811449-ef82375ff85c3a2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


话不多说，先上配置

| 配置 / Hardware | 详情 / Detail|
| ------ | ------ | 
| 型号 / Model | Dell Inspiron 15 7000 Gaming (7567) |
| 操作系统 / OS | macOS Mojave 10.14.4 |
| 处理器 / CPU | Intel Core i7-7700HQ @ 2.80GHz |
| 内存 / Memory|  8 GB ( Hynix DDR4 2400MHz )|
| 硬盘 / HardDrive| Samsung SM961 256GB|
| 显卡 / Graphics Card| Intel HD Graphics 630 (platform-id:0x591B0000) |
| 声卡 / Sound Card | Realtek ALC256 ( layout-id:2/56 )|
| 网卡 / Network Card | Dell DW1820A ( BCM94350ZAE ) |

## 已知问题

* 1.*已修复*  ~~触控板不能右键，两边都是左键，目前未修复。~~
* 2.*已修复*  ~~屏幕最低亮度还是过于亮，晚上特别刺眼，比win10下的最低亮度还亮，在10.14以及之前的版本中使用whatevergreen.kext v1.2.4及以前版本可以有效降低最低亮度，甚至比win10下还低得多，晚上尤为舒适。顺便说一句，我是换了屏幕的，亮度比原来要高一些。~~
* 3.这一次我并没有装蓝牙驱动，有需要的自行安装。
* 4.睡眠后唤醒无声，暂未修复。

## 注意事项
* 1.适配系统： macOS 10.14 各版本 （10.14、 10.14.4 已测试通过）

* 2.未使用ssdt-x.aml变频,已测试使用Clover仿冒MacBookPro14,3，完美变频。看见有人说MacBookPro14,3存在问题，不能使用HDMI，建议换MacBookPro14,1，目前HDMI不能用，由于精力有限，暂时不换！  

 * 3.关于网卡:
	~~(1).鉴于DW1820A的特殊性，每次重启请点击关机，然后手动重启，在windows，macos，linux系统下都是如此，否则会导致卡在卡在苹果图标第二屏，解决方法就是长按电源关机再开机即可解决。~~

	~~(2).dw1820a未屏蔽针脚，wifi第一次连接时请不要连接电源适配器，连接上之后请不要切换其他wifi，也不要关闭再打开，会死机，要切换的话先把电源，在关机，之后按开机键开机，这一系列操作之后再切换，而且也只能切换一次。在升级或者安装系统时每次重启就卡住直接长按5S电源键就可以继续了。~~

	* (3).综上，慎重选择DW1820A，但DW1560和DW1830太贵。
* 4.关于耳机：3.5mm耳机分为3段（不带麦克风）和4段（带麦克风）两种，经测试，这个机子在win下也是无法识别你插入的是3段还是4段的，要通过官网RealTek驱动自带的MaxxAudioPro这个软件来让用户选择是3段还是4段（就是你插入耳机的时候弹出来的那个页面），所以在Mac下用了都是默认3段，这样兼容性较强，所以带麦的耳机用不了麦，除非是USB接口的。

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

####没有蓝牙了，自己弄吧




## 更新日志
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


&emsp;&emsp;网卡已经替换为dw1820a，这张网卡争议很大，有的设备能直接用，有的屏蔽触点之后能用，有的屏蔽之后还是不能用。不过亲测在使用5Ghz的路由器，蓝牙正常，WIFI也正常，蓝牙不会信号奇差、断断续续，猜测原因是蓝牙工作频段是2.4Ghz，和2.4GHz的wifi频率一样，形成干扰。另外这张卡在win10下使用毫无问题，驱动是提取自戴尔官方。
&emsp;&emsp;

## 感谢浏览！！！