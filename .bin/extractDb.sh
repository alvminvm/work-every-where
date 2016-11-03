#!/bin/bash


#########################################################################
# File Name: extractDb.sh
# Author: JeremyHe
# mail: jeremyhe_cn@gmail.com
# Created Time: 二  9/20 10:13:44 2016
#########################################################################

destDir=~/线上用户账本
if [ $# -gt 0 ]; then
	destDir=$1
fi
echo 输出目录为: $destDir
success=0;
fail=0;
_1mdir=$destDir/1m及以上
_300kdir=$destDir/300k~1m
_250kdir=$destDir/250k~300k
_200kdir=$destDir/200k~250k
otherdir=$destDir/other
mkdir -p $_1mdir
mkdir -p $_300kdir
mkdir -p $_250kdir
mkdir -p $_200kdir
mkdir -p $otherdir
for line in $(ls)
do
	db=./$line/jinchuhuobook.bdb
	if [ -f $db ]; then
		let success+=1;
		filesize=`ls -l $db | awk '{print $5}'`
		if [ $filesize -gt $((1023*1024)) ]; then
			cp $db $_1mdir/$line.bdb
		elif [ $filesize -gt $((299*1024)) ]; then
			cp $db $_300kdir/$line.bdb
		elif [ $filesize -gt $((249*1024)) ]; then
			cp $db $_250kdir/$line.bdb
		elif [ $filesize -gt $((199*1024)) ]; then
			cp $db $_200kdir/$line.bdb
		else
			cp $db $otherdir/$line.bdb	
		fi
	else
		let fail+=1;
		echo $line >> ~/failbooklist.txt
	fi
done

echo "success: $success"
echo "fail: $fail"

