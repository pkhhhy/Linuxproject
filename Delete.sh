#!/bin/bash
#Delete virus

delete(){
			rm $1
			if [ $? -ne 0 ]
			then
				echo "Delete $1 failed!"
				echo "Delete $1 failed!" >> Virus.log
			else
				echo "Delete $1 successfully!"
				echo "Delete $1 successfully!" >> Virus.log
			fi
}
