if [ ! -n "$SSH_AUTH_SOCK" ]; then
	eval `ssh-agent`
	ssh-add "$HOME"/.ssh/id_ed25519
fi;
