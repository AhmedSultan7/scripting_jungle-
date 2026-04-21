#!/usr/bin/env bin
today=$(date+"%y-%m-%d")
backup_dir="/tmp/backup-$today"
source_file="/var/log/syslog"
#Check if the buckup directory exists
if [[ ! -d "$bauckup_dir"]]; then
	echo "Directory $backup_dir not found"
	mkdir "$backup_dir"
	echo "Directory Created."
else 
	echo "Directory $backup_dir already exist"
fi
# Check if source file exists and readable
if [[ ! -f "$source_file" || ! -r "$source_file"]]; then 
	echo "Error : source $source_file does not exist or not readale"
	exit 1
fi 
# check if source file is empty 
if [[ ! -s "$source_file" ]]; then
	echo "Warning $source_file is empty. backing up anyway. "
fi 
cp "$source_file" "$backup_dir/syslog.bak"
echo "Backup of $source_file completed successfully to $backup_dir"
