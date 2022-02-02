#!/bin/bash
#: Title	: Iterate Insert Execute (iterInsExec)
#: Date		: 2022-01-29
#: Author	: YetAnotherGeorge
#: Version	: 1.0 
#: Description	: Arg 1 is the command base. The rest are what
#: Description  : will try to insert item in place of {} and execute all piped input and all args after $1
#: Options	: 


str=$1
printf "BASE COMMAND: \"%s\"\n" "$str"

shift
for var in "$@"
do
    to_execute=${str/\{\}/"$var"}
    printf "Executing (from arg list): \"%s\" \n" "$to_execute"
    $to_execute
done

while read var
do
    to_execute=${str/\{\}/"$var"}
    printf "Executing (from pipe): \"%s\"\n" "$to_execute" 
    $to_execute
done
