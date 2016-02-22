#!/bin/bash
. env.sh

echo "install lib32"
echo $PWD | sudo -S apt-get install lib32z1 lib32ncurses5  lib32stdc++6
