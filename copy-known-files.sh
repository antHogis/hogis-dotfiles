#!/usr/bin/env bash 

# Would like to set "e" here too, but copying files with spaces fails though the variables are
# quoted, so need to allow continuing after error
set -uo pipefail

# Optional argument, defines the subdirectory of dotfiles repo to where configs should be copied
SETUP_NAME="${1:-"manjaro-sway"}"

# Go to script location
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
pushd $SCRIPT_DIR > /dev/null

CONFIG_DIR="${SCRIPT_DIR}/${SETUP_NAME}" 
CONFIG_DIR_LEN="${#CONFIG_DIR}"


# List config files defined in the dotfiles repo
find $CONFIG_DIR -type f -print0 | while IFS=$'\n' read -r -d $'\0' CONFIG_FILE;
do
	# Get the path to the in-use counterpart of the config file defined in the dotfiles repo
	# E.g. $CONFIG_DIR/home/hogis/.zshrc -> /home/hogis/.zshrc 
	REAL_CONFIG_FILE="${CONFIG_FILE:CONFIG_DIR_LEN}"

	cp "${REAL_CONFIG_FILE}" "${CONFIG_FILE}" ;
done

