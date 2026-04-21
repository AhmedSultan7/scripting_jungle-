#!/usr/bin/env bash

USER_ID=$(id -u)

if [[ "$USER_ID" -ne 0 ]]; then 
	echo "Error: this script must be run as root."
	exit 1
fi
echo "Welcom adminstrator"
