#!/bin/bash
. env.sh

echo $password | sudo -S apt-get remove firefox thunderbird empathy
