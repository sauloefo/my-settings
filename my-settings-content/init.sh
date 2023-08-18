#!/bin/bash
#set -euo pipefail

export EDITOR=vim
export MY_SETTINGS_PATH=$(cd `dirname $BASH_SOURCE`;pwd;)

. "$MY_SETTINGS_PATH"/variables/init.sh
. "$MY_SETTINGS_PATH"/aliases/init.sh
. "$MY_SETTINGS_PATH"/omp/init.sh
