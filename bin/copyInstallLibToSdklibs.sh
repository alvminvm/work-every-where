#!/bin/bash
target_android=$MMR_DEV_ROOT/sdk/lib/android
if [ -d $target_android ]; then
	rm -R $target_android
fi

src_android=$MMR_DEV_ROOT/core/install/lib/android
if [ -d $src_android ]; then
	cp -R $src_android $target_android
	echo "copy android lib"
fi

target_linux=$MMR_DEV_ROOT/sdk/lib/linux
if [ -d $target_linux ]; then
	rm -R $target_linux 
fi

src_linux=$MMR_DEV_ROOT/core/install/lib/linux
if [ -d $src_linux ];then
	cp -R $src_linux $target_linux
	echo "copy linux lib"
fi
