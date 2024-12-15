#!/bin/bash

#symlinking configs, overwriting possible files
#shellRC
ln -sf $(pwd)/.shell/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.shell/.bashrc $HOME/.bashrc

#shell scripts
rm -rf $HOME/.shell
ln -snf $(pwd)/.shell $HOME/.shell

# symlink all configs 
CONFIGS=$(ls -d .config/*/)
for cfg in $CONFIGS; do 
    rm -rf "$HOME/$cfg"
    ln -snf "$(pwd)/$cfg" "$HOME/.config/"
done

