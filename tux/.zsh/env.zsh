#!/bin/zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR=vim

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
# Fix the GPG version to 2.2 because 2.3 is currently not working with gpg card and yubikeys
export PATH="/usr/local/opt/gnupg@2.2/bin:$PATH"


# MAC GPG config
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
