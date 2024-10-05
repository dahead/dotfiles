# dotfiles

dotfiles for an ArchLinux desktop setup with the tiling compositors [hyprland](https://github.com/hyprwm) and [niri](https://github.com/YaLTeR/niri).

### Arch Linux
* https://archlinux.org/
* https://wiki.archlinux.org/title/Archinstall

### .bashrc
- Hyprland starts on tty1.
- niri starts on tty2.

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
```sudo pacman -S gdb ninja gcc cmake meson cpio libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info tomlplusplus hyprlang hyprcursor hyprwayland-scanner xcb-util-errors hyprutils-git```

### Dark mode
Dark mode is achieved via [Adwaita-Dark theme](https://aur.archlinux.org/packages/adwaita-dark) and [nwg-look](https://github.com/nwg-piotr/nwg-look).
Thunar for example did not go dark until nwg-look was installed and configured. nwg-look creates the need gtk configs.

### Steam
Steam is run through [cage](https://www.hjdskes.nl/projects/cage/) a wayland kiosk app. Currently (and even with cage) steam has a lot of display errors in the GUI.

### nvidia

#### with grub

```/etc/default/grub```

add

```GRUB_CMDLINE_LINUX_DEFAULT="xxx nvidia_drm.modeset=1 xxx"```

#### with systemd-boot
currently nothing special to do...

#### load nvidia kernel modules

```/etc/mkinitcpio.conf```

add this to the MODULES section:

```MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)```
```sudo mkinitcpio -P linux```

#### blacklist nouveau

```/etc/modprobe.d/nouveau_blacklist.conf```

add this:

```blacklist nouveau```

Reboot!

### Problems with the Steam GUI on hyprland (with nvidia)

* Boot loop when starting: set cursor and GTK theme, ie. with nwg-look.
* GUI display errors: Even with parameters -vgui, -bigpicture, -gamepadui and/or -reset steam wont show its GUI. The only way to start games is to do it directly with the steam app and the app_id parameter (in combination with cage/gamescope). 

# Installation

## arch packages

#### base linux
iwd
nano
linux-headers

#### nvidia
nvidia
nvidia-utils
lib32-nvidia-utils
egl-wayland

#### terminal
alacritty

#### window manager and addons
hyprland
hyprpm
hyprpaper
hyprutils
hyprwayland-scanner
hyprcursor
xdg-desktop-portal-hyprland
otf-font-awesome
brightnessctl

#### window manager addons
waybar
niri
mako
wofi
swaylock
gnome-themes-extra

#### display settings
nwg-look

#### theme
adwaita-cursors
adwaita-icon-theme

#### fonts
ttf-font-awesome

#### needed for hyprpm plugins
make 
ninja

#### system
man
openssh
pipewire
pamixer
pavucontrol
pango
fwupd
cmus

#### bluetooth
bluez
bluez-utils
blueman

#### tools
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
cage
gamescope
