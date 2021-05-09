#!/bin/bash

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

mkdir -p ~/.local

# ZSH
ln -sf "$cur_dir/tux/.zshrc" ~/.zshrc
ln -sf "$cur_dir/tux/.zsh" ~/.zsh
#chsh -s $(which zsh)
# source ~/.zshrc

# TMUX
ln -sf "$cur_dir/tux/.tmux.conf" ~/.tmux.conf

# VIM
ln -sf "$cur_dir/tux/.vimrc" ~/.vimrc

# git
ln -sf "$cur_dir/gen/_gitignore" ~/.gitignore