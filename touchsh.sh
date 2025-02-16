#!/bin/bash

if [[ $# == 0 ]]
then
    RED='\033[0;31m'
    NC='\033[0m' # N
    printf "${RED}Please enter file name ${NC}\n"
	exit
fi

for val in $@
do
	filename=$val.sh
	touch $filename
	chmod +x $filename
    echo "#!/bin/bash" > $filename
done
