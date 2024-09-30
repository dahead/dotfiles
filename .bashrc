#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# dh: tty1 -> use hyprland
if [[ $(tty) == /dev/tty1 ]]; then
  exec Hyprland
fi

# dh: tty2 -> use niri
if [[ $(tty) == /dev/tty2 ]]; then
    exec niri --session
fi
