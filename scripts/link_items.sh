#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ln -snf $SCRIPT_DIR/.config/nvim ~/.config/nvim
ln -snf $SCRIPT_DIR/.config/tmux ~/.config/tmux
ln -snf $SCRIPT_DIR/.config/tmux/tmux.conf ~/.tmux.conf
ln -snf $SCRIPT_DIR/.config/fish ~/.config/fish
ln -snf $SCRIPT_DIR/.config/alacritty ~/.config/alacritty
ln -snf $SCRIPT_DIR/.config/zellij ~/.config/zellij

