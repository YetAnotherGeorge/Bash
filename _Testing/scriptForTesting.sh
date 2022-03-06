#!/bin/bash
#: Title	: scriptForTesting
#: Date		: 2022-01-28
#: Author	: YetAnotherGeorge
#: Version	: 1.0 
#: Description	: 
#: Options	: 

# s1="string one"
# s2="string two"

# [ -n s1 ]
# printf "length of s1 is not zero\n"

ls -lA
printf "Executed ls -lA command with exit code: %s\n" "$?"
