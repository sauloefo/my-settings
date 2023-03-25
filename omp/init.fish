# work around for this issue: https://github.com/JanDeDobbeleer/oh-my-posh/issues/3632
function create_history_if_necessary
	set -l history_file ~/.local/share/fish/fish_history

	set -l history_file_folder (dirname "$history_file")

	if test ! -d "$history_file_folder"
		mkdir -p "$history_file_folder"
	end

	set -l history_file_name (basename "$history_file")

	if test ! -f "$history_file_name"
		echo -e "- cmd: pwd\n  when: 0" > "$history_file"
	end
end

create_history_if_necessary &&\
oh-my-posh --init --shell fish --config ~/.poshthemes/pure.omp.json | source
