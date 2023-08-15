
#!/bin/bash
set -euo pipefail

[ ! -n "$SSH_AUTH_SOCK" ]
	&& eval `ssh-agent`
	&& ssh-add "$HOME"/.ssh/id_ed25519