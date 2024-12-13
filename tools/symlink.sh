#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf $(pwd)/.shell/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.shell/.bashrc $HOME/.bashrc

#shell scripts
rm -rf $HOME/.shell
ln -snf $(pwd)/.shell $HOME/.shell

#config
rm -rf $HOME/.config/kitty
ln -snf $(pwd)/.config/kitty $HOME/.config/
rm -rf $HOME/.config/ranger
ln -snf $(pwd)/.config/ranger $HOME/.config/
rm -rf $HOME/.config/i3
ln -snf $(pwd)/.config/i3 $HOME/.config/
rm -rf $HOME/.config/picom
ln -snf $(pwd)/.config/picom $HOME/.config/
rm -rf $HOME/.config/polybar
ln -snf $(pwd)/.config/polybar $HOME/.config/
rm -rf $HOME/.config/rofi
ln -snf $(pwd)/.config/rofi $HOME/.config/

