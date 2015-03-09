#!/bin/bash

# 加载环境变量
. env-settings.sh

echo "安装synapse快速定位工具"
echo $PWD | sudo -S apt-get install synapse
