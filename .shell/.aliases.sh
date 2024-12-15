#system
alias ghist="history | grep"
alias ll='exa -abhlS --color=always --group-directories-first --icons'

alias ff="fzf --preview='bat --color=always --style=numbers {}' --bind 'shift-up:preview-page-up,shift-down:preview-page-down,ctrl-y:execute-silent(echo -n {} | xclip -selection clipboard)'"
alias f="find . -type f | ff "
alias rr="ranger"

#cd
alias work="cd /work/PROJEKTE"
#media
alias bytefm="vlc http://www.byte.fm/stream/bytefmhq.m3u -d"
alias icat="kitty +kitten icat"

#software
#nvim
alias v='kickstart'
alias lazyvim='NVIM_APPNAME=lazyvim nvim'
alias nvchad='NVIM_APPNAME=nvchad nvim'
alias kickstart='NVIM_APPNAME=kickstart nvim'
alias astrovim='NVIM_APPNAME=astrovim nvim'
alias lunarvim='NVIM_APPNAME=lunarvim nvim'
#panoply
alias panoply="sh /work/netCDF/PanoplyJ-5.2.3/PanoplyJ/panoply.sh"
#toolsUI
alias toolsUI="java -Xmx1g -jar /work/netCDF/toolsUI-5.5.3.jar"
#docker
alias stop_all_dockers='docker stop $(docker ps -aq)'
alias remove_all_dockers='docker rm -f $(docker ps -aq)'
alias kill_all_dockers='stop_all_dockers && remove_all_dockers'
alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs -f"
alias dce="docker compose exec"
alias dcr="docker compose restart"
alias dcb="docker compose build"
#git
alias gla="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --all"
#python
alias cvenv="python3 -m venv .venv"
alias avenv="source ./venv/bin/activate"
alias apyenv="pyenv activate venv"
alias dpyvenv="pyenv deactivate"
alias stats="source ~/venv/statistics/bin/activate"
#kubectl
alias k="kubectl"

