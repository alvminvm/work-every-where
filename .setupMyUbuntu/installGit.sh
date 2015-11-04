#!/bin/bash
. env.sh

echo "install git"
echo $PWD | sudo -S apt-get -y install git

echo "config git"
git config --global user.email "jeremyhe.cn@gmail.com"
git config --global user.name "JeremyHe"

. divider.sh
