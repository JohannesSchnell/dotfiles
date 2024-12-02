#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf ./.shell/.zshrc $HOME/.zshrc
ln -sf ./shell/.bashrc $HOME/.bashrc

#
ln -sf ./.shell $HOME/.shell