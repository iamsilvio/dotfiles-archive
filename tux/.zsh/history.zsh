#!/bin/zsh

## Command history configuration

HISTFILE=$HOME/.local/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt histignorealldups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
