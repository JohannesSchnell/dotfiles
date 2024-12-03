#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf $(pwd)/.shell/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.shell/.bashrc $HOME/.bashrc

#shell scripts
ln -sf $(pwd)/.shell $HOME/.shell

#config
ln -sf $(pwd)/.config/kitty $HOME/.config/
ln -sf $(pwd)/.config/ranger $HOME/.config/
