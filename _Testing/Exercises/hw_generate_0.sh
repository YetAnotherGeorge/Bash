#!/bin/bash

printf "#!/bin/bash\n" > hw
printf "#: Title	: hw\n" >> hw
printf "#: Date		: 2022-01-28\n" >> hw
printf "#: Author	: Some Rando\n" >> hw
printf "#: Options	: None\n" >> hw

#expected %s\n
printf "printf \"%s%s%s%s\" \"Hello, World!\"\n" "%" "s" "\\" "n" >> hw
chmod 744 hw
printf "Running generated script:\n"
hw
printf "Generated script executed\n"
