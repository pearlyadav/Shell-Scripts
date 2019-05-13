#!/bin/bash
# This script is for checking the information of your system.

tput setaf 1;echo -e '\033[1mStarting...\033[0m';
sleep 3;

# Print kernal name
SHE=$(uname -s)
tput setaf 2;echo -e "\033[1mYour Kernel Name : \033[0m" $SHE

# Print hostname
SHE=$(hostname)
tput setaf 3;echo -e "\033[1mYour Host Name : \033[0m" $SHE

# Print kernal version
SHE=$(uname -v)
tput setaf 1;echo -e "\033[1mYour Kernel Version (with the time and date it was last updated on ) : \033[0m" $SHE

# Print processor type
SHE=$(uname -p)
tput setaf 2;echo -e "\033[1mYour Processor type : \033[0m" $SHE
if [[ "$SHE" =~ "32" ]]
then echo "Your system is 32 bit."
else
tput setaf 3;echo -e "\033[1mYour system is 64 bit.\033[0m"
fi

# Print the Operating system
SHE=$(uname -o)
tput setaf 1;echo -e "\033[1mYour Operating system : \033[0m" $SHE

# check root
if [[ ${UID} -eq 0 ]]
then
	tput setaf 2;echo -e "\033[1mROOT\033[0m"
else
	tput setaf 2;echo -e "\033[1mNOT ROOT\033[0m"
fi

# disk usage
tput setaf 3;echo -e "\033[1mYour Disk Status : \033[0m"
df -h
