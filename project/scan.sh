#!/bin/bash
#scan file

. ./ScanAllDir.sh
. ./ScanDir.sh
. ./Judge.sh
if [ -z $1 ]
then
	echo "-h          Get help"
	echo "-r+[path]   Scan all subdirectories recursively!"
	echo "-n+[path]   Scan current directory!"
	echo -e "Please do not add / at the end of path!!!\n\n"

fi
while getopts ":r:n:h" opt
do
	case $opt in
		r)
			date=$(date "+%Y-%m-%d %H:%M:%S")
			echo $date >> Virus.log
			echo "During this scan:" >> Virus.log
			read_dir $OPTARG
			echo "###########################################"
			echo "#  ##### ##### #     # ##### ##### #   #  #"
			echo "#  #       #   # #   #   #   #     #   #  #"
			echo "#  ####    #   #  #  #   #   ##### #####  #"
			echo "#  #       #   #   # #   #       # #   #  #"
			echo "#  #     ##### #     # ##### ##### #   #  #"
			echo "###########################################"
			echo -e "Finish!\n\n" >> Virus.log
			;;
		n)
			date=`date "+%Y-%m-%d %H:%M:%S"`
                        echo $date >> Virus.log
			echo "During this scan:" >> Virus.log
			read_now $OPTARG
			echo "###########################################"
                        echo "#  ##### ##### #     # ##### ##### #   #  #"
                        echo "#  #       #   # #   #   #   #     #   #  #"
                        echo "#  ####    #   #  #  #   #   ##### #####  #"
                        echo "#  #       #   #   # #   #       # #   #  #"
                        echo "#  #     ##### #     # ##### ##### #   #  #"
                        echo "###########################################"
			echo -e "Finish!\n\n" >> Virus.log
			;;
		h)
			echo "-h	  Get help"
			echo "-r+[path]   Scan all subdirectories recursively!"
			echo "-n+[path]   Scan current directory!"
			echo -e "Please do not add / at the end of path!!!\n\n"
			;;
		?)
			echo "Unkonw parameter!" && exit 0
			;;
	esac
done


