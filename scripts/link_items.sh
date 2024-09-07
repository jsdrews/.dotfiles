#!/bin/bash

# Running from this dir won't work -- taskfile runs this in one directory up
ln -snf $PWD/.config/nvim ~/.config/nvim
ln -snf $PWD/.config/tmux ~/.config/tmux
ln -snf $PWD/.config/tmux/tmux.conf ~/.tmux.conf
ln -snf $PWD/.config/fish ~/.config/fish
ln -snf $PWD/.config/alacritty ~/.config/alacritty
ln -snf $PWD/.config/zellij ~/.config/zellij

