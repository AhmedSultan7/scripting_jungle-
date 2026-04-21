#!/usr/bin/env bash

today=$(date +"%Y-%m-%d")
backup_dir="backup-$today"
echo "Checking for directory: $backup_dir"
if [[ -d  "$backup_dir" ]]; then 
	#This block will run IF the condition is True
	echo "Directory aready exists. Nothing to do."
else
	echo " creating backup directoriy."
	mkdir "$backup_dir"
	echo "Backup directory created successfully."
fi
