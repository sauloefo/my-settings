script_folder=$(dirname $BASH_SOURCE)
eval "$(oh-my-posh --init --shell bash --config /etc/oh-my-posh/themes/$(cat $script_folder/theme-name).omp.json)"
