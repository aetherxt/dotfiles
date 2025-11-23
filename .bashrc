#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code='code --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto'
alias clr='clear'
alias bt='bluetui'
alias wifi='impala'
alias home='z $home'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/catppuccin.omp.json)"
eval $(thefuck --alias)
