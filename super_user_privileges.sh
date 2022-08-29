#!/usr/bin/env bash

#This is a script is focused on practicing concepts surrounding Super User Privileges and user creation
# using su and su - 
#manipulating /etc/sudoers/
#creating a user with sudo access to only specific commands 
#use of the which command 


echo -e "This script will be creating a user named \033[36mtotoro\033[0m"
echo -e "This user will only have access to specific commands"

printf "%-10s:%10s\n" "ifconfig" "netstat"
printf "%-10s:%10s\n" "hostname" "arp"
printf "%-10s:%10s\n" "route" "uname"

#creating a dummy user

useradd  totoro
id totoro
passwd totoro

printf "totoro ALL=$(which ifconfig),$(which netstat)\n" >> /etc/sudoers

echo "Command complete"

