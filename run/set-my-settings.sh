#!/bin/bash
set -eu
set -o pipefail

# copy my settings to the destination in the local machine

my_settings_destination_folder=/etc/my-settings

first_arg="${1:-}"

[ -d "$my_settings_destination_folder" ] && [[ -z "$first_arg" || "$first_arg" != "--reset" ]]\
	&& echo '`set-my-settings.sh` already executed. Run `set-my-settings.sh --reset` to run the script again.'\
	&& echo 'Script aborted.'\
	&& exit 1

[ -d "$my_settings_destination_folder" ]\
	&& rm -rf "$my_settings_destination_folder"

mkdir "$my_settings_destination_folder"

cp -r my-settings-content/* "$my_settings_destination_folder"


# include the call to initialize my settings regardless the user

bashrc_file=/etc/bash.bashrc
init_file="$my_settings_destination_folder/init.sh"
init_file_call=". $init_file"

[ ! -f "$bashrc_file" ]\
	&& touch "$bashrc_file"

chmod o+x "$bashrc_file"

if ! grep -q "$init_file_call" "$bashrc_file"; then
	echo "$init_file_call" >> "$bashrc_file"
fi




