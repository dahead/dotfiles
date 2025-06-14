#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export GTK_THEME=Adwaita-dark

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec Hyprland
fi

[ "$(tty)" = "/dev/tty2" ] && exec niri

[ "$(tty)" = "/dev/tty3" ] && exec sway --unsupported-gpu
