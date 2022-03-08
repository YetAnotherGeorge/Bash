#!/bin/bash
#: Title        : testingRead.sh
#: Date         : 2022-03-08
#: Author       : YetAnotherGeorge
#: Version      : 1.0 
#: Description  : 
#: Options      : 

printf "Script for testing the read command: \n"
read arg0 arg1 arg2
printf "Arguments have been read:\n"
printf "\tArg: %s\n" "$arg0" "$arg1" "$arg2"
