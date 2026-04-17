#!/usr/bin/env bash

today=$(date +"%Y-%m-%d")
backup_dir="backup-$today"

echo "creating backup directory: $backup_dir"
mkdir "$backup_dir"
echo "Backup directory created successfully."
