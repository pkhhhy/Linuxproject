#!/bin/bash
#scan file

. ./Judge.sh
read_now(){
        dir=`ls $1`
        for i in $dir
        do
		crc=`./crc32.pl $1"/"$i`
		if [ -z $crc ]
		then
			continue
		else
			judge $crc $1"/"$i
		fi
        done
}
