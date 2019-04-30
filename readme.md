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

* 1.触控板不能右键，两边都是左键，目前未修复。
* 2.屏幕最低亮度还是过于亮，晚上特别刺眼，比win10下的最低亮度还亮，在10.14以及之前的版本中使用whatevergreen.kext v1.2.4及以前版本可以有效降低最低亮度，甚至比win10下还低得多，晚上尤为舒适。顺便说一句，我是换了屏幕的，亮度比原来要高一些。
* 3.这一次我并没有装蓝牙驱动，有需要的自行安装
## 注意事项
* 1.适配系统： macOS 10.14 各版本 （10.14、 10.14.4 已测试通过）

* 2.未使用ssdt-x.aml变频,已测试使用Clover仿冒MacBookPro14,3，完美变频。看见有人说MacBookPro14,3存在问题，不能使用HDMI，建议换MacBookPro14,1，目前HDMI不能用，由于精力有限，暂时不换！  

* 3.关于网卡:
	* (1).鉴于DW1820A的特殊性，每次重启请点击关机，然后手动重启，在windows，macos，linux系统下都是如此，否则会导致卡在卡在苹果图标第二屏，解决方法就是长按电源关机再开机即可解决。

	* (2).dw1820a未屏蔽针脚，wifi第一次连接时请不要连接电源适配器，连接上之后请不要切换其他wifi，也不要关闭再打开，会死机，要切换的话先把电源，在关机，之后按开机键开机，这一系列操作之后再切换，而且也只能切换一次。在升级或者安装系统时每次重启就卡住直接长按5S电源键就可以继续了。

	* (3).综上，慎重选择DW1820A，但DW1560和DW1830太贵。
* 4.关于耳机：3.5mm耳机分为3段（不带麦克风）和4段（带麦克风）两种，经测试，这个机子在win下也是无法识别你插入的是3段还是4段的，要通过官网RealTek驱动自带的MaxxAudioPro这个软件来让用户选择是3段还是4段（就是你插入耳机的时候弹出来的那个页面），所以在Mac下用了都是默认3段，这样兼容性较强，所以带麦的耳机用不了麦，除非是USB接口的。

## 图片欣赏
![](https://upload-images.jianshu.io/upload_images/16811449-fdf0ed11b1f0ab98.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://upload-images.jianshu.io/upload_images/16811449-0e02c0d48109d649.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![电池](https://upload-images.jianshu.io/upload_images/16811449-ee57efab642c5cfa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![声卡](https://upload-images.jianshu.io/upload_images/16811449-aca97b641bd46047.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![显卡](https://upload-images.jianshu.io/upload_images/16811449-54fa2b645f3ffa2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![网卡DW1820A](https://upload-images.jianshu.io/upload_images/16811449-b960cf9f73eff781.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![](https://upload-images.jianshu.io/upload_images/16811449-aec25a87ce5ca74c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
 
####没有蓝牙了，自己弄吧




## 更新日志

* 2018.10.13
	* 首次发布，所有使用的驱动都是当前最新。
* 2018.11.24
	* 路由器使用了5Ghz，蓝牙正常！宿舍8M内都正常！听了20min不存在断开连接！
	* USBInjectAll.kext 更新到2018-11-08 (0.7.1)，FakePCIID_Broadcom_WiFi.kext 和 FakePCIID.kext更新到2018-1027，来自RehubMan大神，感谢！！！
	* 更新几张图片（有的是上次截的，忘了放在这里面）。
* 2018.12.3
	* 添加了ALCPlugFix，这个补丁是用来修复耳机破音，源自网络 ，里面有用法说明，感谢制作此补丁的大婶！！！
* 2018.12.11
	* Clover更新到Clover_v2.4k_r4701.RM-4963.ca6cca7c，来自RehubMan，感谢！
	* 去掉了FakePCIID_Broadcom_WiFi.kext，没换网卡的有这个也没用！
	* 修复了Clover引导界面卡的问题，大家说的Clover界面卡的问题我试了5次，没复现卡的情况，经一个好友反馈，卡顿的情况也不再出现，初步判断是因为用了太花哨的主题，占用资源过多导致。
	
* 2019.4.30	
	* Clover更新到Clover_v4903	
	* 新增10.14.x解除USB端口限制补丁
	* 新增DVMT修正补丁
	* 新增NoTouchID驱动
	* 删除applebacklightinjecktor.kext和applebacklight补丁
	* 删除蓝牙驱动，需要的自行驱动吧
	* 驱动更新
		* WhateverGreen1.2.8
		* VoodooPS2Controller_v1.9.2
		* Lilu_v1.3.5
		* AppleALC_v1.3.6


## 如果你认可我的努力，可以通过 `打赏` 支持我后续的更新
 


|支付宝红包|微信 |支付宝|
| --- | --- | --- |
|![Alipay envelope](https://upload-images.jianshu.io/upload_images/16811449-4176ea54843483f4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)|![Wechat pay](https://upload-images.jianshu.io/upload_images/16811449-3f1be37277bad3c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
|![Alipay](https://upload-images.jianshu.io/upload_images/16811449-7a881429acebdf7d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)|

## 闲扯


&emsp;&emsp;网卡已经替换为dw1820a，这张网卡争议很大，有的设备能直接用，有的屏蔽触点之后能用，有的屏蔽之后还是不能用。不过亲测在使用5Ghz的路由器，蓝牙正常，WIFI也正常，蓝牙不会信号奇差、断断续续，猜测原因是蓝牙工作频段是2.4Ghz，和2.4GHz的wifi频率一样，形成干扰。另外这张卡在win10下使用毫无问题，驱动是提取自戴尔官方。
&emsp;&emsp;

## 感谢浏览！！！
