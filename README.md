# dotfiles

dotfiles for an ArchLinux desktop setup with the tiling compositors [hyprland](https://github.com/hyprwm) and [niri](https://github.com/YaLTeR/niri).

## Arch Linux
* https://archlinux.org/
* https://wiki.archlinux.org/title/Archinstall

### .bashrc
- niri starts on tty1.
- Hyprland starts on tty2.

### Hyprland
* https://github.com/hyprwm
* https://hyprland.org/
* https://hyprland.org/plugins/

### niri
* https://github.com/YaLTeR/niri
* Getting started: https://github.com/YaLTeR/niri/wiki/Getting-Started

### Terminal alacritty
* https://alacritty.org/
* https://github.com/alacritty/alacritty
* https://wiki.archlinux.org/title/Alacritty

### Toolbar
* [waybar](https://github.com/Alexays/Waybar)

### Background / wallpaper
* [hyprpaper](https://github.com/hyprwm/hyprpaper)

### hyprland installation
```sudo pacman -S gdb ninja gcc cmake meson cpio libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info tomlplusplus hyprlang hyprcursor hyprwayland-scanner xcb-util-errors hyprutils slurp grim```

### Dark mode
Dark mode is achieved via [Adwaita-Dark theme](https://aur.archlinux.org/packages/adwaita-dark) and [nwg-look](https://github.com/nwg-piotr/nwg-look).
Thunar for example did not go dark until ```nwg-look```, ```xdg-desktop-portal-gnome``` and ```xdg-desktop-portal-gtk``` was installed and configured. nwg-look creates the need gtk configs.

# Installation 

### Download
* archlinux iso: https://archlinux.org/download/
* ```sudo dd if=archlinux.iso of=/dev/XXX bs=1M status=progress```
* ```archinstall```

#### base linux
neovim
linux-headers
git

#### terminal
alacritty

#### nvidia
nvidia
nvidia-utils
lib32-nvidia-utils
egl-wayland

#### hyprland window manager and addons
hyprland
hyprpaper
hyprutils
hyprwayland-scanner
hyprcursor
xdg-desktop-portal-hyprland

#### niri window manager
niri

#### window manager addons
waybar
mako
wofi
swaylock
brightnessctl
otf-font-awesome
wl-clipboard
slurp
grim

#### Dark Mode, display settings, themes
xdg-desktop-portal-gnome 
xdg-desktop-portal-gtk
adwaita-cursors
adwaita-icon-theme
gnome-themes-extra
nwg-look

#### system
man
openssh
pipewire
pamixer
pavucontrol
pango
fwupd
cmus
ttf-font-awesome

#### bluetooth
bluez
bluez-utils
blueman

#### applications / tools
firefox
mpv
htop
nvtop
secrets
thunar
thunar-volman
tumbler
unzip
gvfs
ffmpegthumbnailer
net-tools
traceroute

### games
ttf-liberation
steam
