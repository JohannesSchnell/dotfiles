#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf ./.shell/.zshrc $HOME/.zshrc
ln -sf ./.shell/.bashrc $HOME/dotfiles/.bashrc

#
ln -sf ./.shell $HOME/.shell