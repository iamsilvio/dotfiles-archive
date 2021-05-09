#!/bin/zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# may only be needed on mac
export GPG_TTY=$(tty)  
