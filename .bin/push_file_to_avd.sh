#!/bin/bash
debug=true
pkg=com.maimairen.app.jinchuhuo
avdDbDir=`pwd | sed "s/.*\/databases/\/data\/data\/$pkg\/databases/g"`
if [ debug ]; then
	echo packname: $pkg;
	echo target dir: $avdDbDir;
fi

if [ $1 ]; then
	dbFileName=$1;
else
	dbFileName=jinchuhuobook.bdb
fi
adb  push ./$dbFileName $avdDbDir/$dbFileName

owner=`adb  shell ls -l /data/data/$pkg/databases/hmdb | awk '{print $2}'`
echo $owner	
adb  shell chown -R $owner:$owner $avdDbDir/$dbFileName
adb  shell chmod -R 777 $avdDbDir/$dbFileName

echo "result:"
adb  shell ls -l $avdDbDir


