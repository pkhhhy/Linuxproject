#!/bin/bash
#Determine if the file is a virus!

. ./Delete.sh
judge(){
	flag="true"
	echo $flag > temp.txt
	cat lib.sign | while read line
do
	substr=${line:0:8}
        if [ $1 == $substr ]
        then
		flag="false"
		echo $flag > temp.txt
                echo "$2 is a Virus"
		echo "$2 is a Virus" >> Virus.log
		delete $2
		break
        fi
done
read pread < temp.txt
if [[ $pread == "true" ]]
then
	echo "There is no virus in $2"
fi
}
