#!/bin/zsh

alias ll='ls -FGlah'
alias lh='ls -lah'
alias ...='cd ../..'
alias now='date +%s'

alias h='history | sort -k2 | uniq -f2 | sort -bn'

alias cl='clear'

alias irc='tmux new -A -s irc'
alias update='ll'

alias https='http --default-scheme=https'




function ct5() { AWESOME_COUNTDOWN=$(date  --date 'now + 5 minutes' +%s) }
function ct90() { AWESOME_COUNTDOWN=$(date  --date 'now + 90 minutes' +%s) }

# Create a folder and move into it in one command
#function mkcd() { mkdir -p "$@" && cd "$_"; }
