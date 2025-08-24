#!/bin/bash

# Checking that only two arguments are pass and giving usage guidelines
if [ $# -ne 2 ]
then 
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Example local: ./backup.sh /home/username/projects /mnt/backup"
    echo "Example remote: ./backup.sh /home/usrnamme/projects username@mars.cse.iitb.ac.in/backup"
    echo "Please try again."
    exit 1
fi

# Check to see if rsync is installed 
if ! command -v rsync > /dev/null 2>&1
then 
    echo "This script requires rsync to be installed."
    echo "Please use your distribution's package manager to install it and try again."
    exit 2
fi


# Use the curr date in format DD-MM-YYYY which we are familier with
current_date=$(date +%d-%m-%Y)

# Setting the flags which we are going to use in a variable
rsync_options="-avb --backup-dir="$2/$current_date" --delete"

# $(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
log_file="backup_$current_date.log"

#  If target is remote 
if [[ "$2" == *:* ]]; then
    rsync $rsync_options "$1" "$2/current" | ssh "$remote_host" "cat >> $remote_path/$log_file"
else
    rsync $rsync_options "$1" "$2/current" >> "$2/$log_file"
fi











# # checking if target dir exist otherwise create it
# if [[ "$2" == *:* ]]; then
#     # Remote: create dirs on remote server
#     remote_host="${2%%:*}"
#     remote_path="${2#*:}"
#     ssh "$remote_host" "mkdir -p $remote_path/current $remote_path/$current_date"
# else
#     # we are create dirs locally
#     mkdir -p "$2/current" "$2/$current_date"
# fi

