#!/bin/bash


#########################################################################
# File Name: sed.sh
# Author: JeremyHe
# Email: jeremyhe.cn@gmail.com
# Created Time: 一 10/24 17:30:19 2016
#########################################################################

for file in $(find . -name '*.java')
do
	sed "s/import com.maimairen.app.module.jinchuhuo.R;/import com.maimairen.app.module.cloudpos.R;/g" $file > $file.bak
	rm $file
	mv $file.bak $file
done

