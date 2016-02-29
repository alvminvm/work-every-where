#!/bin/bash
logFile=~/.cache/upstart/unity-panel-service.log
logFileSize=`ls -l $logFile | awk '{ print $5 }'`
# 1GB
maxLimitSize=1073741824
if [ $logFileSize -gt $maxLimitSize ]; then 
	rm $logFile
	pid=`ps -A | grep unity-panel-ser | awk '{ print $1 }'`	
	kill $pid
	notify-send "empty the trash."
fi
