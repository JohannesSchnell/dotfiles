#add SSH
# eval $(ssh-agent -s)
# ssh-add ~/.ssh/id_ed25519

#make nvim standard editor
export EDITOR=nvim

# Bind Home and End keys for Zsh
bindkey "^[[1~" beginning-of-line  # Home key
bindkey "^[[4~" end-of-line        # End key