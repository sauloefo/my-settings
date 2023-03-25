set -x MY_SETTINGS_PATH (status dirname)
set -U EDITOR vim
fish_ssh_agent
ssh-add ~/.ssh/github-private-key
# . "$HOME"/.config/nvm/setup.sh
# . "$HOME"/.config/ssh/setup.sh
source "$MY_SETTINGS_PATH"/aliases/init.fish
source "$MY_SETTINGS_PATH"/omp/init.fish
source ~/.asdf/asdf.fish
