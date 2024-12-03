#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf $(pwd)/.shell/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.shell/.bashrc $HOME/.bashrc

#shell scripts
ln -snf $(pwd)/.shell $HOME/.shell

#config
rm -rf $HOME/.config/kitty
ln -snf $(pwd)/.config/kitty $HOME/.config/
rm -rf $HOME/.config/ranger
ln -snf $(pwd)/.config/ranger $HOME/.config/
