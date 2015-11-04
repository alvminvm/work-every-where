#!/bin/bash
. env.sh

echo "install git"
echo $password | sudo -S apt-get install git

echo "config git"
git config --global user.email "jeremyhe.cn@gmail.com"
git config --global user.name "JeremyHe"

. divider.sh
