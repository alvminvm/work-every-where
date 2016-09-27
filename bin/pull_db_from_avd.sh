#!/bin/bash
pkg=com.maimairen.app.jinchuhuo.dev
if [ $1 ]; then
	pkg=$1;
fi
adb -e pull data/data/$pkg/databases/
