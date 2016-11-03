#!/bin/bash
pkg=com.maimairen.app.jinchuhuo.dev
if [ $1 ]; then
	pkg=$1;
fi
adb pull data/data/$pkg/databases/
