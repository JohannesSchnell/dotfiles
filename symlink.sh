#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf $(pwd)/.shell/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.shell/.bashrc $HOME/.bashrc

#
ln -sf $(pwd)/.shell $HOME/.shell