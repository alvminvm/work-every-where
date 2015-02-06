#!/bin/sh
sudo apt-get install python-pip
sudo pip install shadowsocks
echo "复制shadowsocks.json到etc目录"
echo "添加shadowsocks到自启动"
echo "echo 'passwd' | sudo -S sslocal -c /esudo sslocal -c /etc/shadowsocks.json -d start"
