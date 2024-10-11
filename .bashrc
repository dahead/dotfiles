#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# bash config
# stop logging dupe commands
export HISTCONTROL=ignoredups
shopt -s checkwinsize

# fzf integration keybinding fuzzy completion
eval "$(fzf --bash)"

if [[ $(tty) == /dev/tty1 ]]; then
  exec niri
fi

if [[ $(tty) == /dev/tty2 ]]; then
  exec Hyprland
fi
