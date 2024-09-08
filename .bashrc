#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# dh: tty1 -> use hyprland
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec Hyprland
fi

# dh: tty2 -> use niri
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 2 ]; then
  exec niri
fi
