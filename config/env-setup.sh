#!bin/sh
# 更新软件库并安装32位的支持
echo "更新软件库"
sudo apt-get upgrade
echo "安装32位支持库"
sudo apt-get install ia32-libs lib32ncurses5-dev
