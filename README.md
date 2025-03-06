# dotfiles

dotfiles for an ArchLinux desktop setup with the tiling compositor [hyprland](https://github.com/hyprwm).

## Arch Linux
* [Website](https://archlinux.org/)
* [Wiki](https://wiki.archlinux.org/title/Archinstall)

### .bashrc
- Hyprland starts on tty1.

### Hyprland
* [Github](https://github.com/hyprwm)
* [Website](https://hyprland.org/)
* [Plugins](https://hyprland.org/plugins/)

### Terminal
* [Website](https://alacritty.org/)
* [Github](https://github.com/alacritty/alacritty)
* [Wiki](https://wiki.archlinux.org/title/Alacritty)

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
* [archlinux iso Download](https://archlinux.org/download/)
* ISO to usb boot stick: ```sudo dd if=archlinux.iso of=/dev/XXX bs=1M status=progress```
* Start the installation: ```archinstall```

#### base linux
``
neovim
linux-headers
git
``

#### terminal
``
alacritty
``

#### nvidia
``
nvidia
nvidia-utils
lib32-nvidia-utils
egl-wayland
``

#### hyprland window manager and addons
``
hyprland
hyprpaper
hyprutils
hyprwayland-scanner
hyprcursor
xdg-desktop-portal-hyprland
``

#### niri window manager
``
niri
``

#### window manager addons
``
waybar
mako
wofi
swaylock
brightnessctl
otf-font-awesome
wl-clipboard
slurp
grim
``

#### Dark Mode, display settings, themes
``
xdg-desktop-portal-gnome 
xdg-desktop-portal-gtk
adwaita-cursors
adwaita-icon-theme
gnome-themes-extra
nwg-look
``

#### system
``
man
openssh
pipewire
pamixer
pavucontrol
pango
fwupd
cmus
ttf-font-awesome
fzf
``

#### bluetooth
``
bluez
bluez-utils
blueman
``

#### applications / tools
``
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
imv
thunar-archive-plugin
xarchiver
``

### games
``
ttf-liberation
steam
``

### Development

```
mono
dotnet-runtime
godot
gimp
```

# Usage

## Hyprland

### Basic
* SUPER+R start wofi launcher
* SUPER+Q close active window
* SUPER+E starts file manager (thunar)
* SUPER+M close hyprland session

### Window management
* Super+F Fullscreen active window (optional: SHIFT)
* Super+V Float/toggle floating
* Super+Shift+R starts resize-mode with arrow-keys for active window.
* Super+LMB move current window
* Super+RMB resize current window
* Super+arrow key move current window
* Super+H/J Split/toggle split
* Super+Shift+H/L/J/K move window up/down left/right
* Super+1-9 Switch to workspace 1-9
* Super+Shift+1-9 Move current window to workspace 1-9
* Super+Mouse up/up switch current workspace

### Quake style alacritty
* CTRL+Grave opens a new alacritty window on the top 1/3 of the screen.

### Multimedia keys supported
* Audio/Video playback
* Volume adjustment
* Screenshots using grim

### Special workspace
* SUPER+SHIFT+S Move current window to special workspace
* SUPER+S Show special workspace
