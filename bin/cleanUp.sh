echo $PWD | sudo -S apt-get -y autoclean
echo $PWD | sudo -S apt-get -y clean

echo "查看已安装的内核映像"
echo $PWD | sudo -S dpkg --get-selections  | grep linux-image

echo "当前内核版本"
uname -r

echo "使用sudo apt-get purge linux-image-2.6.32-26-generic删除多余内核版本"
echo "只须保留linux-image-generic和当前内核版本即可"

echo "查看已有的编译库"
echo $PWD | sudo -S dpkg --get-selections  | grep linux-headers

echo "sudo apt-get purge linux-headers-2.6.28-19"
echo "只须保留与当前内核版本相对应的编译库"

