#!/bin/bash
# Scan all files

. ./Judge.sh
read_dir(){
    for file in `ls -a $1`
    do
        if [ -d $1"/"$file ]
        then
            if [[ $file != '.' && $file != '..' ]]
            then
                read_dir $1"/"$file
            fi
        else
		crc=`./crc32.pl $1"/"$file`
		if [[ -z $crc ]]
		then
			continue
		else
			judge $crc $1"/"$file
		fi
        fi
    done
}
