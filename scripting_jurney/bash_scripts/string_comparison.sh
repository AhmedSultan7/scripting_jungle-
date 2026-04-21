#!/usr/bin/env bash

read  -p " Enter your name: " user_name
if [[ -z "$user_name" ]]; then 
	echo "Error : Name can not be empty. Exiting."
	exit 1
fi
echo "Welcome, $user_anme!"
