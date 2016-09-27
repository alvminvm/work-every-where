#!/bin/bash
debug=true
pkg=com.maimairen.app.jinchuhuo.dev
if [ $1 ]; then
	pkg=$1
fi
avdDbDir=`pwd | sed "s/.*\/databases/\/data\/data\/$pkg\/databases/g"`
if [ debug ]; then
	echo packname: $pkg;
	echo target dir: $avdDbDir;
fi

dbFileName=jinchuhuobook.bdb
adb -e push ./$dbFileName $avdDbDir/$dbFileName

owner=`adb -e shell ls -l $avdDbDir/sync | awk '{print $2}'`
adb -e shell chown $owner:$owner $avdDbDir/$dbFileName
adb -e shell chmod 777 $avdDbDir/$dbFileName

echo "result:"
adb -e shell ls -l $avdDbDir


