#!/bin/bash

# Define the list of software to install
SOFTWARE="curl zsh ranger fzf kitty"

# Check for Linux distributions: Arch, Fedora, Ubuntu
if [[ -f /etc/os-release ]]; then
    . /etc/os-release

    # Check if it's Arch
    if [[ "$ID" == "arch" ]]; then
        echo "Arch Linux detected. Installing packages..."
        sudo pacman -Syu --noconfirm $SOFTWARE

    # Check if it's Fedora
    elif [[ "$ID_LIKE" == "fedora" ]]; then
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

echo "get ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "generating symlinks"
source symlink.sh

## plugins
git clone https://github.com/Aloxaf/fzf-tab ~/.oh-my-zsh/custom/plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
## theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
