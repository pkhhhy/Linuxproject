# Simulated virus scanning #

## Features ##

​	This project is used to simulate the process of software scanning for viruses, and stores randomly written files in the virus database. The source file is in the lib directory. The virus database is written using crc32 encryption and the file name as the identification of each file.

## Operating System ##

Unix/Linux

## Instructions ##

The main file is scan.sh，Running the file will automatically scan the given path and generate a log file named Virus.log with the scan information

## Parameter ##

-h              Get help
-r+[path]    Scan all subdirectories recursively!
-n+[path]   Scan current directory!

## Precautions ##

<font color=red size=5px>Please do not add "/" at the end of path！</font>