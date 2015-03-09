#!/bin/sh

# 加载环境变量
. env-settings.sh

echo "安装shadowsocks..."
echo $PWD | sudo -S apt-get install python-pip
echo $PWD | sudo -S pip install shadowsocks
echo "复制shadowsocks.json到etc目录"
echo "添加shadowsocks到自启动"
echo "echo 'passwd' | sudo -S sslocal -c /etc/shadowsocks.json -d start"
