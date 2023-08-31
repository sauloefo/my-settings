#!/bin/bash
set -euo pipefail

solaar_pid=$(pgrep solaar)

[ -z "$solaar_pid" ]\
	&& kill "$solaar_pid"

solaar --window=hide&
