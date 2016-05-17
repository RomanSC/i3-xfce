#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#ls
alias ls='ls -alh --color=always'

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
alias ...='cd .. && cd ..'
alias ....='cd .. && cd .. && cd ..'

#say
alias say='espeak'

alias ranger='ranger --cmd="toggle_option show_hidden"'
