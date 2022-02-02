#!/bin/bash
#: Title	: ex17_1
#: Date		: 2022-01-28
#: Author	: YetAnotherGeorge
#: Version	: 1.0 
#: Description	: 
#: Options	: 

#what is wrong with the following command:
#tr A Z < file > file
#idk but using a buffer fixes it:
#cat file | tr A Z | sponge file

