#!/bin/bash
. env.sh

echo $PWD | sudo -S apt-get -y remove firefox thunderbird empathy
echo $PWD | sudo -S apt-get -y autoremove
echo $PWD | sudo -S apt-get -y clean
echo $PWD | sudo -S apt-get -y autoclean
