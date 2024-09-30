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
Dark mode is achived via [Adawaita-Dark theme](https://aur.archlinux.org/packages/adwaita-dark) and [nwg-look](https://github.com/nwg-piotr/nwg-look).
Thunar for example did not go dark until nwg-look was installed and configured.

### Steam
Steam is run through [cage](https://www.hjdskes.nl/projects/cage/) a wayland kiosk app. Currently (and even with cage) steam has a lot of display errors in the GUI.

### nvidia

```/etc/default/grub```

add

```GRUB_CMDLINE_LINUX_DEFAULT="xxx nvidia_drm.modeset=1 xxx```

```/etc/mkinitcpio.conf```

add this to the MODULES section:

```MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)```



### arch packages

#### base linux
iwd
nano

#### nvidia
linux-headers
nvidia
nvidia-utils
egl-wayland
lib32-nvidia-utils

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

#### window manager addons
waybar
niri
mako
wofi
swaylock
gtk2
gtk3
gtk4
gnome-themes-extra

#### display settings
nwg-look
qt6ct
qt6-base
qt6-wayland

#### theme
adwaita-cursors
adwaita-icon-theme
adwaita-icon-theme-legacy

#### fonts
ttf-font-awesome
ttf-font-liberation

#### needed for hyprpm plugins
make 
ninja

#### system
openssh
pipewire
pamixer
pavucontrol
pango
fwupd

#### bluetooth
bluez
bluez-utils
blueman

#### tools
firefox
mpv
htop
thunar
thunar-volman
gvfs
ffmpegthumbnailer
net-tools
traceroute
secrets

### games
steam
cage
