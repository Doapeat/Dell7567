[中文](readme.md) |[English](readme_en.md)



## 所以建个交流群吧

<img src=".\Screenshots\qq.png" style="zoom:50%;" />

话不多说，先上配置

| 配置 / Hardware | 详情 / Detail|
| ------ | ------ |
| 型号 / Model | Dell Inspiron 15 7000 Gaming (7567) |
| 处理器 / CPU | Intel Core i7-7700HQ @ 2.80GHz |
| 内存 / Memory|  16 GB ( DDR4 2400MHz )|
| 硬盘 / HardDrive| Hikvision C2000PRO 1T|
| 显卡 / Graphics Card| Intel HD Graphics 630 (platform-id:0x591B0000) |
| 声卡 / Sound Card | Realtek ALC256 ( layout-id:16)|
| 网卡 / Network Card | Dell DW1820A (BCM94350ZAE) |

## 安装注意事项
* BIOS设置:
	* 设置 `SATA Mode`为 `AHCI` ，自行百度；
	* 关闭 `Legacy Option ROMs`；
	* 关闭 `Secure Boot`；
	* 关闭 `VT ` (最好)；
	* 关闭 SGX；
* `蓝牙驱动:` ~~`BrcmBluetoothInjector.kext` `BrcmFirmwareData.kext` `BrcmPatchRAM2.kext` (3个)；~~`DW1820ABT``
* ``WiFi驱动:` `AirportBrcmFixup.kext` (1个)
在`\EFI\Clover\kexts\Off`下，是不会启用的，需要的自行放到`\EFI\Clover\kexts\Other` 注意安装顺序：先从BIOS中关闭WiFi和蓝牙再安装系统，然后安装`蓝牙` `WiFi`驱动；
* `CPU变频驱动:`  7700HQ和5700HQ都已经定制了`14,1`机型的CPUFriend；性能均为Blance，需要自行定制的[看这里](https://github.com/stevezhengshiqi/one-key-cpufriend/blob/master/README_CN.md)；
* 安装过程中可能会在剩余2分钟安装完成时自动重启，不用担心，直接选择刚才安装的盘启动；
* 在Clover.plist 中的SMBIOS仿冒机型改为`（14,1）`，原来机型是`（14,3）`的麻烦自己改一下，不修改会导致USB驱动失败，需要重新定制USB，其他问题需重装才能修复；
* ~~`CodecCommander.kext` 安装到 `Library\Extensions\`下面可以解决唤醒无声问题，不会安装的可以使用` Kext Utility` 、`Hackintool`等安装~~；
* ~~使用ALCPlugFix修复耳机杂音~~，改用由`VicQ`老哥制作的`ComboJack_For_Dell7567_Only`驱动耳机，可以驱动麦克风，自行选择，但仅支持7567，其他机型慎用！
* 自己写了一些方便的脚本方便大家使用，在`Scripts`文件夹内，自行选择使用

## 解锁CFG（损坏硬件我不负责）

推荐下面这三位老哥的解锁办法，两个办法的工具我都提供了，更推荐针针小站的方法，速度更快！提取原始BIOS也可以不用PE，直接在windows提取也是一样的！

针针小站：[【Hackintosh】Dell Precision 5510 解锁BIOS高级设置](https://hyejeong.cn/unlockbios)

独行秀才的老窝：[OpenCore引导Mac下解除CFG LOCK锁定](https://shuiyunxc.gitee.io/2020/02/13/Unlock/index/)

云屋小站：[无需刷BIOS！使用setup_var命令解锁MSR 0xE2锁定，修改dvmt值，开启AHCI](https://www.misonsky.cn/115.html)

## 今后的更新都是基于解锁`CFG lock`的EFI，请自行选择对应的`config.plist`

| match | CFG_Unlocked Laptop |CFG_Locked Laptp |
| ------ | ------ | ------ |
| Use config_CFG_Unlocked.plist | 更好的HWP和性能调度 | 可能无法开机 |
| Use config_CFG_Locked.plist | 一般的HWP和性能调度 | 一般的HWP和性能调度 |


### 在此处提供一个简单的方法：写在文章最后



## 更新日志



* 2018.10.13
	
	* 首次发布，所有使用的驱动都是当前最新
	
	  
	
* 2018.11.24
	
	* 路由器使用了5Ghz，蓝牙正常！宿舍8M内都正常！听了20min不存在断开连接！
	* USBInjectAll.kext 更新到2018-11-08 (0.7.1)，FakePCIID_Broadcom_WiFi.kext 和 FakePCIID.kext更新到2018-1027，来自RehubMan大神，感谢！！！
	
	* 更新几张图片（有的是上次截的，忘了放在这里面）
	
	  
	
* 2018.12.3
	
	* 添加了ALCPlugFix，这个补丁是用来修复耳机破音，源自网络 ，里面有用法说明，感谢制作此补丁的大婶！！！
	
	  
	
* 2018.12.11
	* Clover更新到Clover_v2.4k_r4701.RM-4963.ca6cca7c，来自RehubMan，感谢！
	
	* 去掉了FakePCIID_Broadcom_WiFi.kext，没换网卡的有这个也没用！

	* 修复了Clover引导界面卡的问题，大家说的Clover界面卡的问题我试了5次，没复现卡的情况，经一个好友反馈，卡顿的情况也不再出现，初步判断是因为用了太花哨的主题，占用资源过多导致
	
	  
	
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
		
		  
	
* 2019.5.1

  * 添加并修正applebacklightinjecktor.kext和applebacklight补丁，以修复屏幕最低亮度过亮的Bug

  

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

    

* 2019.5.13
	
	* 使用VirtualSMC驱动，和FakeSMC相比，很难说哪个更好，可以肯定的是前者更新
	* 使用Hackintool驱动USB，读卡器已驱动
	* 加入`-rad24`参数，强制使用24位色彩，颜色过渡更顺滑，想使用32位的可以去除
	* 使用国际友人的亮度驱动，可以使用【Fn+S】和【Fn+B】进行控制（在此感谢）
	* 由于使用SMCBatteryManager驱动，电池信息不是很完整，有需要的可以换成ACPIBatteryManager



* 2019.12.29
	* 适配10.15.2；
	
	* 感谢`黑果小兵`提供的镜像；
	
	* 感谢`kttde`提供的SSDT-LPC.aml和[关于beta4升级beta5卡在AppleNVME Assert Failed的暂时解决办法](http://bbs.pcbeta.com/viewthread-1825003-1-1.html)；
	
	  


* 2020.1.1
	
	* 修复CPU变频，通过CPU-S测得14档左右；
	
	  


* 2020.1.18
  * Clover升级到v5103；
  * 借用了国外大佬`Nihhaar`的VoodooI2C的驱动，非常感谢！！！目前触控板可以驱动，不过没有win10灵敏，具体自测；
  * 增加了4K屏幕的支持，请到`Cover`目录下修改`config_4K.plist`为`config.plist`，具体自测，我的是1080p；
  * 已知问题：
    * 无法完全睡眠，长时间睡眠时间会睡死；
    * 低音单元尝试了很多办法，还是没有办法驱动；

  


* 2020.2.2 
  * 没事就多待在家里玩玩黑苹果吧！少出门溜达！

  * 昨天的Clover文件我忘记检查，导致安装失败或者无法进入系统，在此和大家说一句抱歉！今天修复了一下，建议删除原来的文件，仅保留SMBIOS信息，不要覆盖原文件；

  * 在Clover.plist 中的SMBIOS仿冒机型改为`（14,3）`；

  * 修改声卡`LayoutID=14`，成功驱动低音单元，但是低音单元和普通单元是分开的两个输出设备，解决办法详见：[MacOSX多音频设备混合输出方法](https://www.jianshu.com/p/f16e63817bc9)；

  * 添加显卡信息，修改显存为2048M；

  * 重新定制USB，内建蓝牙、摄像头和左侧的USB2.0，方便蓝牙鼠标使用；

  * Lilu.kext、AllpleALC.kext、AirportBrcmFixup.kext、NoTouchID.kext常规升级；

  * 已知问题：

    * 睡眠时好时坏，具体自测；

      



* 2020.2.24
	
	* 本机型换网卡之后，目前各项功能已趋于完美；
	* 感谢群友`VicQ`，他制作的声卡节点信息已经成功同时驱动了低音单元和前扬声器，已提交`AppleALC`作者审核，不出意外下个版本应该会发布。应`VicQ`要求，暂时不公布测试的`AppALC.kext`文件，静待官方发布；
	* 使用了新的ssdt修复睡眠，并添加启动参数`darkwake=10`，再次感谢群友`VicQ`；
	* 经过查阅资料，反复对比，使用重命名`ECDV to EC`的方式修补EC设备效果最好；
	* 精简重命名规则、驱动和补丁；
	* 已知问题：
	
		* 7700HQ的显卡几乎只能运行在400MHz左右，极少的时间段下能运行的更高，而7300HQ似乎没有这个问题，希望大家自测；
		
		  
	
* 2020.3.8
	* 使用`VooDooInput.kext`驱动触控板，触控更灵敏，同时修复睡眠唤醒之后偶尔出现触控板无法使用的问题；
	* 合并1080P和4K的Config.plist文件；
	* 注入网卡、显卡、声卡的PCI设备属性，更换DW1820A的请手动去掉`Config.plist/Devices/properties/#PciRoot(0x0)/Pci(0x1C,0x5)/Pci(0x0,0x0)`项目前面的`#`以启用，有助于解决部分搜不到手机热点的问题；
	* 已知问题：
		* 耳机使用`ALCplugFix`+`CodecCommander.kext`可能会导致插入耳机时内置MIC和耳机MIC均无法使用的问题，这是驱动与声卡节点不兼容的原因导致的，`VicQ`修改制作了新的驱动以解决这一问题，还在测试；
		
		* 添加启动参数`-disablegfxfirmware`可以解决核显最高只能达到400Mhz的问题，自行斟酌使用；
		
		  


* 2020.3.15
	* 重新定制触控板驱动，感谢`VicQ`老哥，使用GPI0中断方式驱动，效率更高，更加跟手；
	* 改用ApplePS2Controller.kext，导致`Fn+S` `Fn+B`无法使用，但是可以在`设置`中修改成其他的快捷键，不过`设置`中`屏幕亮度`的选项隐藏了，插入一个外接键盘即可显示，有需要的自行换成VoodooPS2Controller.kext，不过不好驱动，容易掉触控板；
	* 核显可以达到1.1Ghz，不过不稳定，应该是调度原因；
	* 删除多余无用的驱动；
	* 常规更新；
	* 内建网卡；
	* 已知问题：
		
	* 电池睡眠正常，接外接适配器睡不死，外设全部取了一样睡不死；
		
		  
	
* 2020.3.20
	* 今后只提供已解锁CFG的config.plist，未解锁的请自行配置；
	* 驱动`f11`、`f12`亮度快捷键（感谢`VicQ`）；
	* 自编译`BrcmBluetoothInjector.kext` `BrcmFirmwareData.kext` `BrcmPatchRAM2.kext` 精简合并成`DW1820ABT`，仅支持`DW1820A`；
	* 自编译`AppleALC.kext` 精简成`AppleALC256.kext`，仅支持`ALC256`；
	* 常规更新；
	* 已知问题：
		
		* 电池睡眠正常，接外接适配器睡不死，外设全部取了一样睡不死；
		






## 如果你认可我的努力，可以通过 `打赏` 支持我后续的更新


|支付宝红包|微信 |支付宝|
| :-: | :-: | :-: |
|<img src=".\Screenshots\eve.png" alt="Alipay envelope"  />|<img src=".\Screenshots\wechatpay.png" alt="Wechatpay"  />|<img src=".\Screenshots\alipay.png" alt="Alipay"  />|


## 图片欣赏

<img src=".\Screenshots\mian.png" alt="关于"  />

<img src=".\Screenshots\i2c.png" alt="触控板完美驱动"  />

<img src=".\Screenshots\freq.png" alt="核显还是表现还是不太好，可能是CPU调度的问题？" style="zoom:50%;" />



<img src=".\Screenshots\brightness.png" alt="image.png" style="zoom:80%;" />




 <img src=".\Screenshots\touchpad.png" alt="按教程设置就行" style="zoom: 150%;" />

<img src=".\Screenshots\crw.png" alt="SD读卡器，USB2.0的速度"  />





## 解锁CFG（损坏硬件我不负责）

## 机型不是Dell 7567，请不要看下面的方法；

## BIOS版本不是1.10.0，请小心使用！

## 升级BIOS不一定会重新锁定CFG，自行校验！

<img src=".\Screenshots\cfg1.png" alt="可以看到地址为0x4DE"  />

1.从上图中可以看到CFG lock的地址是`0x4DE`，默认是`开启`状态；

2.从我们的`modGRUBShell.efi`(可以像添加Clover启动项一样将这个efi文件添加为启动项)启动；

3.进入之后输入`setup_var_3 0x4DE`，查看返回值是不是`0x01`，如果不是请关闭或重启系统，查看上面两位大佬的教程重头来过；

4.如果是`0x01`，那么输入 `setup_var 0x4DE 0x00`，输入`reboot`重启系统，使用Hackintool可以看到下面的样子：

<img src=".\Screenshots\cfg2.png" alt="检查解锁"  />


至此解锁完成！顺便把`启用HWP`勾上！



## 感谢浏览！！！!