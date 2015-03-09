#!bin/sh

# 添加环境变量
. env-settings.sh

# 更新软件库并安装32位的支持
echo "更新软件库"
echo $PWD | sudo -S apt-get upgrade
echo "安装32位支持库"
echo $PWD | sudo -S apt-get install ia32-libs lib32ncurses5-dev
echo "安装下载工具MultiGet"
echo $PWD | sudo -S apt-get install multiget 

# 需要向rc.local添加的内容，在启动的时候运行
# echo 'linux' | sudo -S sslocal -c /etc/shadowsocks.json -d start
# xmodmap ~/.xmodmap 2>/dev/null
