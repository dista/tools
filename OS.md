# 系统安装和配置

## 双系统
需要先装windows, 在windows磁盘管理里面分一个分区出来。安装linux的时候选择along side windows,安装程序会自动找到这个分区，
然后把linux安装在上面


## Linux mint 18 mate 配置
Linux mint 18 mate的易用性还是不错的， 驱动，输入法都可以通过界面进行配置。输入法可以选`Fcitx`.
原生的皮肤比较丑, 可以在Appearance里面进行设置, Icon可以下载Oranchelo, 开始按钮的图片可以用右键换掉。

### 安装注意点
* 安装的时候把网卡断开，防止它在安装的时候去下载不必要的安装包

### 设置
* 驱动，直接打开`Driver Manager`就可以进行设置
* 字体，系统已经chrome的字体都选择`Noto Sans CJK SC`, 这是中文字体，可以使得中文网站的显示变得非常不错。
* Nvidia显卡和默认的window manager不兼容，会出现`tearing`, 可以吧window manager改为`Marco + Compton`. 修改地点在`Desktop Setting
-> Windows -> Window Manager`
* openvpn可以用`Import a saved VPN configuration`直接导入.opvn的文件,避免手动配置

## Windows下面删除Linux
* 下载dbr工具，用它的图形界面一键修复，注意修复后会导致关机失效，直接断电重启就正常了
* 用`计算机管理->磁盘管理`删除对应的分区，如果删不掉，在CMD里面用`diskpart`进行删除(delete partition override)

