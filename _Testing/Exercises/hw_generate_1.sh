#!/bin/bash
#: Title	: hw_generate_1
#: Date		: 2022-01-28
#: Author	: YetAnotherGeorge
#: Version	: 1.0 
#: Description	: 
#: Options	: 

exec 4<&1  #save stdout
exec 1> hw #redirect stdout to file hw
printf "Test\n"

printf "#!/bin/bash\n"
printf "#: Title	: hw\n"
printf "#: Date		: 2022-01-28\n"
printf "#: Author	: YetAnotherGeorge\n"
printf "#: Version	: 1.0 \n"
printf "#: Description	: \n"
printf "#: Options	: \n"
printf "\nprintf \"%s\" \"Hello, World!\"\n " "%s\n"

exec 1<&4
printf "hw created through io redirection.\n"
