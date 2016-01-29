#!/bin/bash
. env.sh

echo "install common"
echo $PWD | sudo -S  apt-get install gcc-multilib g++-multilib
