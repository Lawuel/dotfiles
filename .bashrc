#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -a'
alias grep='rg --color=auto'
alias ff='fastfetch'
alias wofi='$(wofi --define=drun-print_desktop_file=true)'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
