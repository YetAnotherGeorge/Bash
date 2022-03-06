#!/bin/bash
#: Title        : bash_template
#: Date         : 2022-01-28
#: Author       : YetAnotherGeorge
#: Version      : 1.0
#: Options      : Script
#: Description  : Creates a bash file template
#: Description  : 

[[ -z "$1" ]] && { echo "Error: Parameter 1 is empty; no title provided" ; exit 1; }

#get date in the yyyy-mm-dd format
#title is $1
dateYMD=$(date --rfc-3339='date')
author="YetAnotherGeorge"
fpath="${PWD}/${1}"

printf "Creating new bash file template:\n"
printf "   Title       : %s\n" $1
printf "   Date        : %s\n" $dateYMD
printf "   Author      : %s\n" $author
printf "   Version     : 1.0\n"
printf "   Options     : \n"
printf "   Description : \n"
printf "   Description : \n"

cat > $fpath <<- EOM
#!/bin/bash
#: Title        : $1
#: Date         : $dateYMD
#: Author       : $author
#: Version      : 1.0 
#: Options      : 
#: Description  : 
#: Description  : 

#code here
EOM

chmod 744 $fpath
printf "File created with execute permissions (744).\n"