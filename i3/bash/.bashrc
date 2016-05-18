#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#pastebin
alias pastebin='curl -F c=@- https://ptpb.pw/'

#dd
alias dd='dd status=process'

#ping
alias ping='ping -c 4'
alias ping-google='ping 8.8.8.8; 8.8.4.4'
alias ping-dns='ping -c'

#cd commands
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

#say
alias say="espeak"

#devprep
alias devprep='echo "__________________________________________" && lsblk && echo "__________________________________________" && echo "." && pwd && echo "__________________________________________" && echo "~/Downloads" && ls ~/Downloads && echo "__________________________________________" && echo "~/Downloads/torrents" && ls ~/Downloads/torrents && echo "__________________________________________"'
