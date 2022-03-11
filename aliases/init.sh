#!/bin/sh

# git
alias g='git'
alias gs='git status'
alias gc='git add . && git commit -m'
alias ga='git add . && git commit --amend --no-edit'
alias gl='git log --oneline'
alias gpush='git push'
alias gpull='git pull'
alias gr='git reset'
# sfdx
alias x='sfdx'

alias xol='sfdx force:org:list'
alias xoc='sfdx force:org:create'
alias xod='sfdx force:org:delete'
alias xoo='sfdx force:org:open'

alias xpush='sfdx force:source:push'
alias xpull='sfdx force:source:pull'
alias xsr='sfdx force:source:retrieve'
alias xsd='sfdx force:source:deploy'

alias xcs='sfdx config:set'

function xcsu {
	sfdx config:set defaultusername="$1";
}

function xcsv () {
	sfdx config:set defaultdevhubusername="$1";
}

alias xcg='sfdx config:get'
alias xcl='sfdx config:list'
alias xcu='sfdx config:unset'

alias xas='sfdx alias:set'
alias xal='sfdx alias:list'
alias xau='sfdx alias:unset'

alias xlogin='sfdx auth:web:login'
alias xlogout='sfdx auth:logout'
