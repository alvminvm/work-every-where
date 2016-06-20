#!/bin/bash
debug=true
avdDbDir=`pwd | sed "s/\/home\/androiddev\/adbpull\//\/data\/data\/com.maimairen.app.jinchuhuo.dev\//g"`
if [ debug ]; then
	echo $dbDir;
fi

dbFileName=jinchuhuobook.bdb
adb -e push ./$dbFileName $avdDbDir/$dbFileName

owner=`adb -e shell ls -l $avdDbDir/sync | awk '{print $2}'`
adb -e shell chown $owner:$owner $avdDbDir/$dbFileName
adb -e shell chmod 777 $avdDbDir/$dbFileName

echo "result:"
adb -e shell ls -l $avdDbDir

