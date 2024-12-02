#!/bin/bash

# Define the list of software to install
SOFTWARE="zsh ranger fzf kitty"

# Check for Linux distributions: Arch, Fedora, Ubuntu
if [[ -f /etc/os-release ]]; then
    . /etc/os-release

    # Check if it's Arch
    if [[ "$ID" == "arch" ]]; then
        echo "Arch Linux detected. Installing packages..."
        sudo pacman -Syu --noconfirm $SOFTWARE

    # Check if it's Fedora
    elif [[ "$ID" == "fedora" ]]; then
        echo "Fedora detected. Installing packages..."
        sudo dnf install -y $SOFTWARE

    # Check if it's Ubuntu
    elif [[ "$ID" == "ubuntu" ]]; then
        echo "Ubuntu detected. Installing packages..."
        sudo apt update
        sudo apt install -y $SOFTWARE

    else
        echo "Unsupported Linux distribution. No packages will be installed."
    fi

else
    echo "Unable to detect OS. /etc/os-release not found."
fi

source symlink.sh