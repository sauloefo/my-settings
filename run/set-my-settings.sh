#!/bin/bash
set -euo pipefail

script_name=$(basename $BASH_SOURCE)

[ $EUID -ne '0' ]\
	&& echo "$(basename $BASH_SOURCE) must be executed as root."\
	&& exit 15

my_settings_destination_folder=/etc/my-settings

first_arg="${1:-}"

[ -d "$my_settings_destination_folder" ] && [[ -z "$first_arg" || "$first_arg" != "--reset" ]]\
	&& echo '==> '"$script_name"' already executed. Run `'"$script_name"' --reset` to run the script again.'\
	&& echo '==> Script aborted.'\
	&& exit 1

[ -d "$my_settings_destination_folder" ]\
	&& rm -rf "$my_settings_destination_folder"

mkdir "$my_settings_destination_folder"

echo "==> Copying my settings to $my_settings_destination_folder ..."
cp -r my-settings-content/* "$my_settings_destination_folder"


# include the call to initialize my settings regardless the user

bashrc_file=/etc/bash.bashrc
init_file="$my_settings_destination_folder/init.sh"
init_file_call=". $init_file"

[ ! -f "$bashrc_file" ]\
	&& touch "$bashrc_file"

chmod o+x "$bashrc_file"

if ! grep -q "$init_file_call" "$bashrc_file"; then
	echo "==> Modifying $bashrc_file ..."
	echo "$init_file_call" >> "$bashrc_file"
fi

echo "==> $script_name successfully executed."


